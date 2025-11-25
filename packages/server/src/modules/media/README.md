# Media Module

## Overview
Media file management with multi-provider storage (S3, R2, DO Spaces), image processing, variants generation, and entity relationships. Supports metadata, CDN URLs, and accessibility features.

## Database Schema

### media
```sql
media {
  id: uuid PRIMARY KEY
  tenant_id: uuid NOT NULL REFERENCES tenants
  storage_provider: varchar(50) NOT NULL -- 's3', 'r2', 'do_spaces'
  bucket: varchar(255) NOT NULL
  key: varchar(500) NOT NULL -- Object key in storage
  filename: varchar(255) NOT NULL
  original_filename: varchar(255) NULL
  mime_type: varchar(100) NOT NULL
  size: integer NOT NULL -- bytes
  width: integer NULL -- Image width
  height: integer NULL -- Image height
  url: text NOT NULL -- Full URL (with CDN if configured)
  entity_type: varchar(50) NULL -- 'item', 'party', 'tenant', 'asset', 'task'
  entity_id: uuid NULL -- Related entity ID
  metadata: text NULL -- JSON string for extra data
  alt_text: text NULL -- Accessibility text
  inserted_at: timestamp with timezone DEFAULT now()
  updated_at: timestamp with timezone DEFAULT now()
  deleted_at: timestamp with timezone NULL

  INDEX (tenant_id)
  INDEX (entity_type, entity_id)
  INDEX (tenant_id, entity_type, entity_id)
  INDEX (storage_provider, bucket, key)
}
```

### item_images
```sql
item_images {
  id: uuid PRIMARY KEY
  tenant_id: uuid NOT NULL REFERENCES tenants
  item_id: uuid NOT NULL REFERENCES items
  media_id: uuid NOT NULL REFERENCES media
  display_order: integer NOT NULL DEFAULT 0
  is_primary: boolean NOT NULL DEFAULT false
  thumbnail_url: text NULL -- 200x200
  medium_url: text NULL -- 800x800
  large_url: text NULL -- 1600x1600
  inserted_at: timestamp with timezone DEFAULT now()
  updated_at: timestamp with timezone DEFAULT now()
  deleted_at: timestamp with timezone NULL

  INDEX (tenant_id, item_id)
  INDEX (item_id, is_primary)
  INDEX (item_id, display_order)
}
```

### asset_images
```sql
asset_images {
  id: uuid PRIMARY KEY
  tenant_id: uuid NOT NULL REFERENCES tenants
  asset_id: uuid NOT NULL REFERENCES assets
  media_id: uuid NOT NULL REFERENCES media
  display_order: integer NOT NULL DEFAULT 0
  is_primary: boolean NOT NULL DEFAULT false
  thumbnail_url: text NULL
  medium_url: text NULL
  large_url: text NULL
  inserted_at: timestamp with timezone DEFAULT now()
  updated_at: timestamp with timezone DEFAULT now()
  deleted_at: timestamp with timezone NULL
}
```

## Key Features

### Multi-Provider Storage
- **S3**: Amazon S3
- **R2**: Cloudflare R2
- **DO Spaces**: DigitalOcean Spaces
- Provider abstraction via StorageProvider interface
- Bucket and key tracking

### Image Processing
- Image validation (format, size, dimensions)
- Metadata extraction (width, height)
- Variant generation:
  - **thumbnail**: 200x200 (WebP)
  - **medium**: 800x800 (WebP)
  - **large**: 1600x1600 (WebP)
- Original format preservation
- WebP conversion for variants

### Polymorphic Relationships
- entity_type + entity_id pattern
- Supports: item, party, tenant, asset, task, etc.
- Flexible attachment to any entity

### Item Images
- Multiple images per item
- Display ordering
- Primary image flag
- Variant URLs (thumbnail, medium, large)
- Cascade delete with item

### Asset Images
- Similar to item images
- Asset-specific image management
- Display ordering and primary flag

### Metadata
- Original filename preservation
- MIME type tracking
- File size in bytes
- Image dimensions (width, height)
- Custom metadata JSON
- Alt text for accessibility

### CDN Support
- URL field supports CDN URLs
- Provider-agnostic URL format
- Full URL to access file

## Service Methods

### uploadItemImage(options)
- Validates image
- Extracts metadata
- Processes variants (thumbnail, medium, large)
- Uploads original + variants to storage
- Creates media record
- Creates item_images record
- Returns all URLs and metadata

### Storage Upload Flow
```
1. Validate image (format, size)
2. Get metadata (width, height)
3. Generate unique ID (nanoid)
4. Create base key: items/{tenant}/{item}/{mediaId}
5. Process variants: thumbnail, medium, large
6. Upload original: {baseKey}/original.{ext}
7. Upload variants: {baseKey}/{variant}.webp
8. Save media record
9. Save item_images record
10. Return URLs
```

### Image Variants
```
Original: items/tenant-id/item-id/media-id/original.jpg
Thumbnail: items/tenant-id/item-id/media-id/thumbnail.webp (200x200)
Medium: items/tenant-id/item-id/media-id/medium.webp (800x800)
Large: items/tenant-id/item-id/media-id/large.webp (1600x1600)
```

## Business Rules

1. Media must belong to a tenant
2. Storage provider, bucket, key required
3. File size tracked in bytes
4. Image dimensions extracted automatically
5. Variants generated for images only
6. Only one primary image per item
7. Display order manages image sequence
8. Soft delete supported
9. Entity relationship optional

## Integration Points

- **Item Module**: Product images
- **Asset Module**: Asset photos
- **Party Module**: Profile pictures, logos
- **Task Module**: Task attachments
- **Asset-Issue Module**: Issue photos
- **Brand Module**: Brand logos
- **Storage Providers**: S3, R2, DO Spaces

## Storage Provider Interface

```typescript
interface StorageProvider {
  upload(options: {
    file: Buffer,
    key: string,
    contentType: string,
    metadata?: Record<string, string>
  }): Promise<{ url: string }>

  delete(key: string): Promise<void>
  getUrl(key: string): string
}
```

## Image Processing

### Validation
- Supported formats: JPEG, PNG, WebP, GIF
- Max file size: Configurable
- Dimension limits: Configurable

### Variants
- Aspect ratio preserved
- Max dimensions enforced
- WebP format for web optimization
- Original format preserved

### Metadata Extraction
- Width and height
- MIME type
- File size
- EXIF data (future)

## Use Cases

### Product Images
```
Item: Widget A
Images:
  - Primary: product-front.jpg
  - Secondary: product-back.jpg, product-detail.jpg
Variants: thumbnail, medium, large for each
```

### Asset Photos
```
Asset: Machine X
Images:
  - Primary: machine-overview.jpg
  - Secondary: control-panel.jpg, damage.jpg
```

### Task Attachments
```
Task: Repair broken part
Images:
  - before-repair.jpg
  - after-repair.jpg
Documents:
  - repair-report.pdf
```

## Notes

- Multi-provider storage support
- Automatic variant generation
- WebP optimization
- Polymorphic entity relationships
- CDN-ready URL structure
- Accessibility support (alt text)
- Display ordering for galleries
- Primary image designation
- All operations are tenant-scoped
- Soft delete support
- Image processor uses sharp library
- nanoid for unique IDs
