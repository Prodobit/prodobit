import { type Item, type ItemQuery } from "@prodobit/types";
import React from "react";
import { Button } from "../components/ui/button";
import { CreateItemForm } from "../forms/CreateItemForm";
import { ItemsDataTable } from "../tables/ItemsDataTable";

export interface ItemManagerProps {
  query?: ItemQuery;
  className?: string;
  showCreateForm?: boolean;
}

export function ItemManager({
  query,
  className,
  showCreateForm = false,
}: ItemManagerProps) {
  const [showForm, setShowForm] = React.useState(showCreateForm);
  const [refreshKey, setRefreshKey] = React.useState(0);

  const handleCreateSuccess = React.useCallback(() => {
    setShowForm(false);
    setRefreshKey((prev) => prev + 1);
  }, []);

  const handleCreateError = React.useCallback((error: Error) => {
    console.error("Failed to create item:", error);
  }, []);

  const handleEdit = React.useCallback((item: Item) => {
    console.log("Edit item:", item);
    // TODO: Implement edit functionality
  }, []);

  const handleDelete = React.useCallback((item: Item) => {
    console.log("Item deleted:", item);
    setRefreshKey((prev) => prev + 1);
  }, []);

  const handleRefresh = React.useCallback(() => {
    setRefreshKey((prev) => prev + 1);
  }, []);

  return (
    <div className={`item-manager ${className || ""}`}>
      <div className="item-manager-header">
        <h1>Item Management</h1>
        <Button
          onClick={() => setShowForm(!showForm)}
          variant={showForm ? "outline" : "solid"}
        >
          {showForm ? "Cancel" : "Create New Item"}
        </Button>
      </div>

      {showForm && (
        <div className="create-item-section">
          <CreateItemForm
            onSuccess={handleCreateSuccess}
            onError={handleCreateError}
            className="create-item-form"
          />
        </div>
      )}

      <div className="items-table-section">
        <ItemsDataTable
          key={refreshKey}
          query={query}
          onEdit={handleEdit}
          onDelete={handleDelete}
          onRefresh={handleRefresh}
          className="items-table"
        />
      </div>
    </div>
  );
}
