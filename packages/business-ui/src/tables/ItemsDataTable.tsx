import React from 'react';
import { type ColumnDef } from '@tanstack/react-table';
import { DataTable } from './DataTable';
import { Button } from '../components/ui/button';
import { useItems, useDeleteItem } from '@prodobit/react-sdk';
import { type Item } from '@prodobit/types';
import { type ItemFilters } from '@prodobit/react-sdk';

export interface ItemsDataTableProps {
  query?: ItemFilters;
  onEdit?: (item: Item) => void;
  onDelete?: (item: Item) => void;
  onRefresh?: () => void;
  className?: string;
}

export function ItemsDataTable({ 
  query, 
  onEdit, 
  onDelete, 
  onRefresh,
  className 
}: ItemsDataTableProps) {
  const { data: items, isLoading, error, refetch } = useItems({
    page: 1,
    limit: 50,
    ...query,
  });
  const deleteItemMutation = useDeleteItem();

  const handleRefresh = React.useCallback(() => {
    refetch();
    onRefresh?.();
  }, [refetch, onRefresh]);

  const handleDelete = React.useCallback(async (item: Item) => {
    if (window.confirm(`Are you sure you want to delete "${item.name}"?`)) {
      try {
        await deleteItemMutation.mutateAsync(item.id);
        await refetch();
        onDelete?.(item);
      } catch (error) {
        console.error('Failed to delete item:', error);
      }
    }
  }, [deleteItemMutation, refetch, onDelete]);

  const columns = React.useMemo<ColumnDef<Item>[]>(
    () => [
      {
        accessorKey: 'name',
        header: 'Name',
        cell: ({ row }) => (
          <div className="item-name">
            <span className="name">{row.original.name}</span>
            {row.original.code && (
              <span className="code">({row.original.code})</span>
            )}
          </div>
        ),
      },
      {
        accessorKey: 'itemType',
        header: 'Type',
        cell: ({ row }) => (
          <span className={`item-type item-type--${row.original.itemType}`}>
            {row.original.itemType.replace('_', ' ').replace(/\b\w/g, (l: string) => l.toUpperCase())}
          </span>
        ),
      },
      {
        accessorKey: 'description',
        header: 'Description',
        cell: ({ row }) => (
          <span className="description">
            {row.original.description || '-'}
          </span>
        ),
      },
      {
        accessorKey: 'unitOfMeasure',
        header: 'Unit',
        cell: ({ row }) => (
          <span className="unit">
            {row.original.unitOfMeasure || '-'}
          </span>
        ),
      },
      {
        accessorKey: 'status',
        header: 'Status',
        cell: ({ row }) => (
          <span className={`status-badge status-badge--${row.original.status}`}>
            {row.original.status}
          </span>
        ),
      },
      {
        accessorKey: 'isActive',
        header: 'Active',
        cell: ({ row }) => (
          <span className={`active-indicator ${row.original.isActive ? 'active' : 'inactive'}`}>
            {row.original.isActive ? '✓' : '✗'}
          </span>
        ),
      },
      {
        accessorKey: 'updatedAt',
        header: 'Last Updated',
        cell: ({ row }) => (
          <span className="date">
            {new Date(row.original.updatedAt).toLocaleDateString()}
          </span>
        ),
      },
      {
        id: 'actions',
        header: 'Actions',
        cell: ({ row }) => (
          <div className="actions">
            {onEdit && (
              <Button
                size="sm"
                variant="ghost"
                onClick={() => onEdit(row.original)}
              >
                Edit
              </Button>
            )}
            <Button
              size="sm"
              variant="ghost"
              onClick={() => handleDelete(row.original)}
              disabled={deleteItemMutation.isPending}
            >
              Delete
            </Button>
          </div>
        ),
      },
    ],
    [onEdit, handleDelete, deleteItemMutation.isPending]
  );

  return (
    <DataTable
      data={(items as unknown as Item[]) || []}
      columns={columns}
      title="Items"
      loading={isLoading}
      error={error?.message}
      onRefresh={handleRefresh}
      className={className}
      searchPlaceholder="Search items..."
    />
  );
}