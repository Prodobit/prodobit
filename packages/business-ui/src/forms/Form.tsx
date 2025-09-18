import React from 'react';
import { useForm, type FormOptions, type FieldApi } from '@tanstack/react-form';
import { Button } from '../components/ui/button';
import { Card } from '../components/ui/card';
import { Field } from '../components/ui/field';
import { clsx } from 'clsx';

export interface FormProps<T extends Record<string, unknown> = Record<string, unknown>> 
  extends Omit<FormOptions<T>, 'onSubmit'> {
  children?: React.ReactNode;
  onSubmit: (values: T) => Promise<void> | void;
  className?: string;
  title?: string;
  description?: string;
  submitText?: string;
  isSubmitting?: boolean;
}

export function Form<T extends Record<string, unknown> = Record<string, unknown>>({
  children,
  onSubmit,
  className,
  title,
  description,
  submitText = 'Submit',
  isSubmitting = false,
  ...formOptions
}: FormProps<T>) {
  const form = useForm({
    ...formOptions,
    onSubmit: async ({ value }) => {
      await onSubmit(value);
    },
  });

  return (
    <Card.Root className={clsx('form-card', className)}>
      {(title || description) && (
        <Card.Header>
          {title && <h2 className="form-title">{title}</h2>}
          {description && <p className="form-description">{description}</p>}
        </Card.Header>
      )}
      
      <form
        onSubmit={(e) => {
          e.preventDefault();
          e.stopPropagation();
          form.handleSubmit();
        }}
      >
        <Card.Body className="form-content">
          {React.Children.map(children, (child) => {
            if (React.isValidElement(child)) {
              return React.cloneElement(child, { form } as any);
            }
            return child;
          })}
        </Card.Body>
        
        <Card.Footer className="form-footer">
          <Button
            type="submit"
            loading={isSubmitting}
            disabled={isSubmitting}
          >
            {submitText}
          </Button>
        </Card.Footer>
      </form>
    </Card.Root>
  );
}

export interface FieldProps<T extends Record<string, unknown>, K extends keyof T> {
  form: ReturnType<typeof useForm<T>>;
  name: K;
  label?: string;
  placeholder?: string;
  type?: string;
  required?: boolean;
  validate?: (value: T[K]) => string | undefined;
}

export function Field<T extends Record<string, unknown>, K extends keyof T>({
  form,
  name,
  label,
  placeholder,
  type = 'text',
  required = false,
  validate,
}: FieldProps<T, K>) {
  return (
    <form.Field
      name={name as string}
      validators={{
        onChange: validate ? ({ value }) => validate(value as T[K]) : undefined,
        onSubmit: validate ? ({ value }) => validate(value as T[K]) : undefined,
      }}
      children={(field: any) => (
        <Field.Root invalid={Boolean(field.state.meta.errors?.length || field.state.meta.touchedErrors?.length)}>
          {label && <Field.Label htmlFor={field.name}>{label}{required && ' *'}</Field.Label>}
          <Field.Input
            id={field.name}
            name={field.name}
            type={type}
            placeholder={placeholder}
            required={required}
            value={field.state.value as string || ''}
            onChange={(e) => field.handleChange(e.target.value)}
            onBlur={field.handleBlur}
          />
          {(field.state.meta.errors?.[0] || field.state.meta.touchedErrors?.[0]) && (
            <Field.ErrorText>{field.state.meta.errors?.[0] || field.state.meta.touchedErrors?.[0]}</Field.ErrorText>
          )}
        </Field.Root>
      )}
    />
  );
}