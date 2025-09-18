import React from 'react';
import {
  useReactTable,
  getCoreRowModel,
  getSortedRowModel,
  getFilteredRowModel,
  getPaginationRowModel,
  type ColumnDef,
  type SortingState,
  type ColumnFiltersState,
  type PaginationState,
  flexRender,
} from '@tanstack/react-table';
import { Button } from '../components/ui/button';
import { Card } from '../components/ui/card';
import { Field } from '../components/ui/field';
import { clsx } from 'clsx';

export interface DataTableProps<TData> {
  data: TData[];
  columns: ColumnDef<TData>[];
  title?: string;
  searchable?: boolean;
  searchPlaceholder?: string;
  pageSize?: number;
  className?: string;
  loading?: boolean;
  error?: string;
  onRefresh?: () => void;
}

export function DataTable<TData>({
  data,
  columns,
  title,
  searchable = true,
  searchPlaceholder = 'Search...',
  pageSize = 10,
  className,
  loading = false,
  error,
  onRefresh,
}: DataTableProps<TData>) {
  const [sorting, setSorting] = React.useState<SortingState>([]);
  const [columnFilters, setColumnFilters] = React.useState<ColumnFiltersState>([]);
  const [globalFilter, setGlobalFilter] = React.useState('');
  const [pagination, setPagination] = React.useState<PaginationState>({
    pageIndex: 0,
    pageSize,
  });

  const table = useReactTable({
    data,
    columns,
    getCoreRowModel: getCoreRowModel(),
    getSortedRowModel: getSortedRowModel(),
    getFilteredRowModel: getFilteredRowModel(),
    getPaginationRowModel: getPaginationRowModel(),
    onSortingChange: setSorting,
    onColumnFiltersChange: setColumnFilters,
    onGlobalFilterChange: setGlobalFilter,
    onPaginationChange: setPagination,
    state: {
      sorting,
      columnFilters,
      globalFilter,
      pagination,
    },
  });

  if (error) {
    return (
      <Card.Root className={clsx('data-table-error', className)}>
        <Card.Body>
          <div className="error-content">
            <p className="error-message">{error}</p>
            {onRefresh && (
              <Button onClick={onRefresh} variant="outline">
                Try Again
              </Button>
            )}
          </div>
        </Card.Body>
      </Card.Root>
    );
  }

  return (
    <Card.Root className={clsx('data-table', className)}>
      {(title || searchable || onRefresh) && (
        <Card.Header>
          <div className="data-table-header">
            <div className="header-left">
              {title && <h3 className="data-table-title">{title}</h3>}
            </div>
            <div className="header-right">
              {searchable && (
                <Field.Input
                  placeholder={searchPlaceholder}
                  value={globalFilter}
                  onChange={(e) => setGlobalFilter(e.target.value)}
                  className="search-input"
                />
              )}
              {onRefresh && (
                <Button
                  onClick={onRefresh}
                  variant="outline"
                  disabled={loading}
                >
                  Refresh
                </Button>
              )}
            </div>
          </div>
        </Card.Header>
      )}

      <Card.Body className="data-table-content">
        {loading ? (
          <div className="loading-state">
            <p>Loading...</p>
          </div>
        ) : (
          <>
            <div className="table-wrapper">
              <table className="data-table-table">
                <thead>
                  {table.getHeaderGroups().map((headerGroup) => (
                    <tr key={headerGroup.id} className="table-header-row">
                      {headerGroup.headers.map((header) => (
                        <th
                          key={header.id}
                          className={clsx('table-header-cell', {
                            'sortable': header.column.getCanSort(),
                          })}
                          onClick={header.column.getToggleSortingHandler()}
                        >
                          {header.isPlaceholder
                            ? null
                            : flexRender(header.column.columnDef.header, header.getContext())
                          }
                          {header.column.getCanSort() && (
                            <span className="sort-indicator">
                              {{
                                asc: ' ↑',
                                desc: ' ↓',
                              }[header.column.getIsSorted() as string] ?? ' ↕'}
                            </span>
                          )}
                        </th>
                      ))}
                    </tr>
                  ))}
                </thead>
                <tbody>
                  {table.getRowModel().rows.map((row) => (
                    <tr key={row.id} className="table-body-row">
                      {row.getVisibleCells().map((cell) => (
                        <td key={cell.id} className="table-body-cell">
                          {flexRender(cell.column.columnDef.cell, cell.getContext())}
                        </td>
                      ))}
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>

            {table.getPageCount() > 1 && (
              <div className="pagination">
                <div className="pagination-info">
                  <span>
                    Showing {table.getState().pagination.pageIndex * table.getState().pagination.pageSize + 1} to{' '}
                    {Math.min(
                      (table.getState().pagination.pageIndex + 1) * table.getState().pagination.pageSize,
                      table.getFilteredRowModel().rows.length
                    )}{' '}
                    of {table.getFilteredRowModel().rows.length} results
                  </span>
                </div>
                <div className="pagination-controls">
                  <Button
                    variant="outline"
                    size="sm"
                    onClick={() => table.setPageIndex(0)}
                    disabled={!table.getCanPreviousPage()}
                  >
                    First
                  </Button>
                  <Button
                    variant="outline"
                    size="sm"
                    onClick={() => table.previousPage()}
                    disabled={!table.getCanPreviousPage()}
                  >
                    Previous
                  </Button>
                  <Button
                    variant="outline"
                    size="sm"
                    onClick={() => table.nextPage()}
                    disabled={!table.getCanNextPage()}
                  >
                    Next
                  </Button>
                  <Button
                    variant="outline"
                    size="sm"
                    onClick={() => table.setPageIndex(table.getPageCount() - 1)}
                    disabled={!table.getCanNextPage()}
                  >
                    Last
                  </Button>
                </div>
              </div>
            )}
          </>
        )}
      </Card.Body>
    </Card.Root>
  );
}