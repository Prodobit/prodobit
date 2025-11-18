export declare const assetAssignment: import("arktype/internal/methods/object.ts").ObjectType<{
    id: string;
    tenantId: string;
    assetId: string;
    assignedTo: string;
    assignedType: "location" | "user" | "department";
    assignedBy: string;
    assignmentDate: string;
    status: "active" | "returned" | "transferred";
    insertedAt: string;
    updatedAt: string;
    expectedReturnDate?: string | undefined;
    actualReturnDate?: string | undefined;
    transferredToAssignmentId?: string | undefined;
    notes?: string | undefined;
    signatureImageId?: string | undefined;
    assignmentReason?: string | undefined;
    returnCondition?: "good" | "damaged" | "needs_repair" | undefined;
    deletedAt?: string | undefined;
}, {}>;
export declare const createAssetAssignmentRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    assetId: string;
    assignedTo: string;
    assignedType: "location" | "user" | "department";
    expectedReturnDate?: string | undefined;
    notes?: string | undefined;
    assignmentReason?: string | undefined;
    signatureImageId?: string | undefined;
}, {}>;
export declare const updateAssetAssignmentRequest: import("arktype/internal/methods/object.ts").ObjectType<{
    status?: "active" | "returned" | "transferred" | undefined;
    actualReturnDate?: string | undefined;
    returnCondition?: "good" | "damaged" | "needs_repair" | undefined;
    notes?: string | undefined;
    transferredToAssignmentId?: string | undefined;
}, {}>;
export declare const assetAssignmentQuery: import("arktype/internal/methods/object.ts").ObjectType<{
    assetId?: string | undefined;
    assignedTo?: string | undefined;
    assignedType?: "location" | "user" | "department" | undefined;
    status?: "active" | "returned" | "transferred" | undefined;
}, {}>;
export type AssetAssignment = typeof assetAssignment.infer;
export type CreateAssetAssignmentRequest = typeof createAssetAssignmentRequest.infer;
export type UpdateAssetAssignmentRequest = typeof updateAssetAssignmentRequest.infer;
export type AssetAssignmentQuery = typeof assetAssignmentQuery.infer;
//# sourceMappingURL=assignment.d.ts.map