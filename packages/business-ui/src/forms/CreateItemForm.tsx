import React from 'react';
import { useForm } from '@tanstack/react-form';
import { Button } from '../components/ui/button';
import { Card } from '../components/ui/card';
import { Field } from '../components/ui/field';
import { Select, createListCollection } from '../components/ui/select';
import { Switch } from '../components/ui/switch';
import { useCreateItem } from '@prodobit/react-sdk';
import { type CreateItemRequest } from '@prodobit/types';

export interface CreateItemFormProps {
  onSuccess?: () => void;
  onError?: (error: Error) => void;
  className?: string;
}

export function CreateItemForm({ onSuccess, onError, className }: CreateItemFormProps) {
  const createItemMutation = useCreateItem({
    onSuccess: () => {
      onSuccess?.();
    },
    onError: (error: unknown) => {
      onError?.(error as Error);
    },
  });

  const form = useForm({
    defaultValues: {
      name: '',
      code: '',
      itemType: 'product' as 'product' | 'service',
      description: '',
      unitOfMeasure: '',
      status: 'active' as 'active' | 'inactive',
      isActive: true,
    },
    onSubmit: async ({ value }) => {
      await createItemMutation.mutateAsync(value);
    },
  });

  const itemTypeOptions = [
    { label: 'Product', value: 'product' },
    { label: 'Service', value: 'service' },
    { label: 'Raw Material', value: 'raw_material' },
    { label: 'Component', value: 'component' },
  ];

  const statusOptions = [
    { label: 'Active', value: 'active' },
    { label: 'Inactive', value: 'inactive' },
    { label: 'Draft', value: 'draft' },
  ];

  return (
    <Card.Root className={className}>
      <Card.Header>
        <Card.Title>Create New Item</Card.Title>
        <Card.Description>Fill in the details below to create a new item</Card.Description>
      </Card.Header>
      
      <form
        onSubmit={(e) => {
          e.preventDefault();
          e.stopPropagation();
          form.handleSubmit();
        }}
      >
        <Card.Body className="form-content space-y-4">
          <form.Field
            name="name"
            validators={{
              onChange: ({ value }) => {
                if (!value || (value as string).length < 1) {
                  return 'Item name is required';
                }
                return undefined;
              },
            }}
            children={(field) => (
              <Field.Root invalid={Boolean(field.state.meta.errors?.length)}>
                <Field.Label>Item Name *</Field.Label>
                <Field.Input
                  placeholder="Enter item name"
                  value={field.state.value || ''}
                  onChange={(e) => field.handleChange(e.target.value)}
                  onBlur={field.handleBlur}
                />
                {field.state.meta.errors?.[0] && (
                  <Field.ErrorText>{field.state.meta.errors[0]}</Field.ErrorText>
                )}
              </Field.Root>
            )}
          />

          <form.Field
            name="code"
            children={(field) => (
              <Field.Root>
                <Field.Label>Item Code</Field.Label>
                <Field.Input
                  placeholder="Enter item code (optional)"
                  value={field.state.value || ''}
                  onChange={(e) => field.handleChange(e.target.value)}
                  onBlur={field.handleBlur}
                />
              </Field.Root>
            )}
          />

          <form.Field
            name="itemType"
            validators={{
              onChange: ({ value }) => {
                if (!value) return 'Item type is required';
                return undefined;
              },
            }}
            children={(field) => (
              <Field.Root invalid={Boolean(field.state.meta.errors?.length)}>
                <Field.Label>Item Type *</Field.Label>
                <Select.Root
                  collection={createListCollection({ items: itemTypeOptions })}
                  value={field.state.value ? [field.state.value as string] : []}
                  onValueChange={(details) => field.handleChange(details.value[0] as any)}
                >
                  <Select.Control>
                    <Select.Trigger>
                      <Select.ValueText placeholder="Select item type" />
                      <Select.Indicator>⌄</Select.Indicator>
                    </Select.Trigger>
                  </Select.Control>
                  <Select.Positioner>
                    <Select.Content>
                      {itemTypeOptions.map((option) => (
                        <Select.Item key={option.value} item={option}>
                          <Select.ItemText>{option.label}</Select.ItemText>
                        </Select.Item>
                      ))}
                    </Select.Content>
                  </Select.Positioner>
                </Select.Root>
                {field.state.meta.errors?.[0] && (
                  <Field.ErrorText>{field.state.meta.errors[0]}</Field.ErrorText>
                )}
              </Field.Root>
            )}
          />

          <form.Field
            name="description"
            children={(field) => (
              <Field.Root>
                <Field.Label>Description</Field.Label>
                <Field.Input
                  placeholder="Enter item description (optional)"
                  value={field.state.value || ''}
                  onChange={(e) => field.handleChange(e.target.value)}
                  onBlur={field.handleBlur}
                />
              </Field.Root>
            )}
          />

          <form.Field
            name="unitOfMeasure"
            children={(field) => (
              <Field.Root>
                <Field.Label>Unit of Measure</Field.Label>
                <Field.Input
                  placeholder="e.g., pcs, kg, m (optional)"
                  value={field.state.value || ''}
                  onChange={(e) => field.handleChange(e.target.value)}
                  onBlur={field.handleBlur}
                />
              </Field.Root>
            )}
          />

          <form.Field
            name="status"
            children={(field) => (
              <Field.Root>
                <Field.Label>Status</Field.Label>
                <Select.Root
                  collection={createListCollection({ items: statusOptions })}
                  value={field.state.value ? [field.state.value as string] : ['active']}
                  onValueChange={(details) => field.handleChange(details.value[0] as any)}
                >
                  <Select.Control>
                    <Select.Trigger>
                      <Select.ValueText placeholder="Select status" />
                      <Select.Indicator>⌄</Select.Indicator>
                    </Select.Trigger>
                  </Select.Control>
                  <Select.Positioner>
                    <Select.Content>
                      {statusOptions.map((option) => (
                        <Select.Item key={option.value} item={option}>
                          <Select.ItemText>{option.label}</Select.ItemText>
                        </Select.Item>
                      ))}
                    </Select.Content>
                  </Select.Positioner>
                </Select.Root>
              </Field.Root>
            )}
          />

          <form.Field
            name="isActive"
            children={(field) => (
              <Field.Root>
                <Field.Label>Active Status</Field.Label>
                <Switch
                  checked={field.state.value as boolean ?? true}
                  onCheckedChange={(details) => field.handleChange(details.checked)}
                />
              </Field.Root>
            )}
          />
        </Card.Body>
        
        <Card.Footer className="form-footer">
          <Button
            type="submit"
            loading={createItemMutation.isPending}
            disabled={createItemMutation.isPending}
          >
            Create Item
          </Button>
        </Card.Footer>
      </form>
    </Card.Root>
  );
}