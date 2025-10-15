# Media Module - Hızlı Başlangıç

Media modülünü 5 dakikada kurmanız için adım adım rehber.

## ⚡ Hızlı Kurulum (5 Dakika)

### 1. Environment Variables

`.env` dosyanızı oluşturun veya güncelleyin:

```bash
# Storage Provider Seçimi
STORAGE_PROVIDER=r2

# Cloudflare R2 Configuration
R2_ACCOUNT_ID=your_account_id
R2_ACCESS_KEY_ID=your_access_key
R2_SECRET_ACCESS_KEY=your_secret_key
R2_BUCKET=prodobit-media
R2_PUBLIC_URL=https://pub-xxxxx.r2.dev
```

💡 **R2 bilgileriniz yok mu?** → [R2 Setup Rehberi](./R2_SETUP.md) adımlarını takip edin.

### 2. Migration Çalıştır

```bash
# Veritabanı tablolarını oluştur
cd packages/database
pnpm db:push
```

Bu komut şu tabloları oluşturur:
- `media` - Tüm media dosyaları (images, documents, etc.)
- `item_images` - Item'lara bağlı image'lar ve variants

### 3. R2 Bağlantısını Test Et

```bash
# Root dizinden
pnpm test:r2
```

Başarılı çıktı:
```
✅ All environment variables are set!
✅ Storage provider initialized: r2
✅ Upload successful!
✅ File exists!
✅ Signed URL generated!
✅ Listed files
✅ File deleted successfully!
🎉 R2 Connection Test Complete!
```

### 4. Server'ı Başlat

```bash
cd saas-server
pnpm dev

# Göreceksin:
# ✅ Storage provider initialized: r2
# 📁 Media module enabled - Ready to manage files!
```

### 5. API ile Test

```bash
# Token al (login ol)
curl -X POST http://localhost:3000/api/v1/auth/verify-otp \
  -H "Content-Type: application/json" \
  -d '{"email":"test@example.com","code":"123456"}'

# Token'ı kaydet
TOKEN="your_access_token"

# Item ID'ni al
ITEM_ID="your_item_id"

# Image upload et
curl -X POST http://localhost:3000/api/v1/media/items/$ITEM_ID/images \
  -H "Authorization: Bearer $TOKEN" \
  -F "file=@test-image.jpg" \
  -F "altText=Product image"
```

Response:
```json
{
  "data": {
    "itemImage": {
      "id": "uuid",
      "itemId": "uuid",
      "isPrimary": false,
      "thumbnailUrl": "https://pub-xxx.r2.dev/.../thumb.webp",
      "mediumUrl": "https://pub-xxx.r2.dev/.../medium.webp",
      "largeUrl": "https://pub-xxx.r2.dev/.../large.webp"
    },
    "media": {
      "id": "uuid",
      "filename": "test-image.jpg",
      "mimeType": "image/jpeg",
      "size": 123456,
      "url": "https://pub-xxx.r2.dev/..."
    },
    "variants": {
      "thumbnail": "https://pub-xxx.r2.dev/.../thumb.webp",
      "medium": "https://pub-xxx.r2.dev/.../medium.webp",
      "large": "https://pub-xxx.r2.dev/.../large.webp"
    }
  }
}
```

## 🎯 API Endpoints

### Upload Image
```http
POST /api/v1/media/items/:itemId/images
Content-Type: multipart/form-data

file: [binary]
altText?: string
isPrimary?: boolean
displayOrder?: number
```

### List Item Images
```http
GET /api/v1/media/items/:itemId/images
```

### Get Single Image
```http
GET /api/v1/media/images/:imageId
```

### Delete Image
```http
DELETE /api/v1/media/images/:imageId
```

### Set Primary Image
```http
PUT /api/v1/media/images/:imageId/primary
Content-Type: application/json

{ "itemId": "uuid" }
```

### Reorder Images
```http
PUT /api/v1/media/items/:itemId/images/reorder
Content-Type: application/json

{ "imageIds": ["uuid1", "uuid2", "uuid3"] }
```

### Update Alt Text
```http
PUT /api/v1/media/images/:imageId/alt-text
Content-Type: application/json

{ "altText": "New description" }
```

### Get Storage Stats
```http
GET /api/v1/media/storage/stats
```

## 💻 SDK Kullanımı

### TypeScript/JavaScript SDK

```typescript
import { ProdobitClient } from '@prodobit/sdk';

const client = new ProdobitClient({
  baseUrl: 'https://api.example.com'
});

// Upload image
const result = await client.uploadItemImage(itemId, file, {
  altText: 'Product photo',
  isPrimary: true
});

// List images
const images = await client.listItemImages(itemId);

// Delete image
await client.deleteItemImage(imageId);

// Set primary
await client.setPrimaryImage(imageId, itemId);

// Reorder
await client.reorderImages(itemId, [id1, id2, id3]);

// Update alt text
await client.updateAltText(imageId, 'New description');

// Get stats
const stats = await client.getStorageStats();
```

### React SDK

```typescript
import {
  useItemImages,
  useUploadItemImage,
  useDeleteItemImage,
  useSetPrimaryImage,
} from '@prodobit/react-sdk';

function ItemImageGallery({ itemId }) {
  const { data: images, isLoading } = useItemImages(itemId);
  const uploadMutation = useUploadItemImage(itemId);
  const deleteMutation = useDeleteItemImage(itemId);
  const setPrimaryMutation = useSetPrimaryImage(itemId);

  const handleUpload = (file: File) => {
    uploadMutation.mutate({
      file,
      metadata: {
        altText: 'Product photo',
        isPrimary: false
      }
    });
  };

  const handleDelete = (imageId: string) => {
    if (confirm('Delete image?')) {
      deleteMutation.mutate(imageId);
    }
  };

  const handleSetPrimary = (imageId: string) => {
    setPrimaryMutation.mutate(imageId);
  };

  if (isLoading) return <div>Loading...</div>;

  return (
    <div>
      <input
        type="file"
        accept="image/*"
        onChange={(e) => e.target.files?.[0] && handleUpload(e.target.files[0])}
      />

      <div className="grid grid-cols-3 gap-4">
        {images?.data.map((img) => (
          <div key={img.id} className="relative">
            <img
              src={img.mediumUrl || img.thumbnailUrl}
              alt={img.altText}
              className="w-full h-auto"
            />
            {img.isPrimary && (
              <span className="badge">Primary</span>
            )}
            <button onClick={() => handleSetPrimary(img.id)}>
              Set Primary
            </button>
            <button onClick={() => handleDelete(img.id)}>
              Delete
            </button>
          </div>
        ))}
      </div>
    </div>
  );
}
```

## 🎨 Image Variants

Her upload otomatik olarak 3 variant oluşturur:

| Variant | Boyut | Format | Quality | Kullanım |
|---------|-------|--------|---------|----------|
| **Thumbnail** | 200x200 | WebP | 80% | Gallery thumbnails, lists |
| **Medium** | 800x800 | WebP | 85% | Product detail, modal |
| **Large** | 1600x1600 | WebP | 90% | Full screen, zoom |

Orijinal dosya da saklanır (herhangi bir format).

## 🔧 Alternatif Storage Providers

### AWS S3
```env
STORAGE_PROVIDER=s3
S3_REGION=us-east-1
S3_ACCESS_KEY_ID=xxx
S3_SECRET_ACCESS_KEY=xxx
S3_BUCKET=prodobit-media
S3_CDN_URL=https://cdn.example.com  # Optional
```

### DigitalOcean Spaces
```env
STORAGE_PROVIDER=do_spaces
DO_SPACES_REGION=nyc3
DO_SPACES_ACCESS_KEY_ID=xxx
DO_SPACES_SECRET_ACCESS_KEY=xxx
DO_SPACES_BUCKET=prodobit-media
DO_SPACES_CDN_URL=https://cdn.example.com  # Optional
```

## 📊 Features

- ✅ **Multi-provider support**: R2, S3, DO Spaces
- ✅ **Automatic image processing**: Resize, optimize, convert to WebP
- ✅ **Multiple variants**: Thumbnail, medium, large
- ✅ **Primary image management**: Set featured image
- ✅ **Display order**: Drag-and-drop sorting
- ✅ **Alt text**: Accessibility support
- ✅ **Soft delete**: Safe deletion with recovery option
- ✅ **Storage stats**: Track usage and costs
- ✅ **TypeScript SDK**: Type-safe client
- ✅ **React hooks**: Ready-to-use components

## 🚨 Troubleshooting

### Images yüklenmiyor
```bash
# 1. Environment variables kontrol et
echo $STORAGE_PROVIDER
echo $R2_BUCKET

# 2. R2 bağlantısını test et
pnpm test:r2

# 3. Server loglarını kontrol et
cd saas-server && pnpm dev
# "Storage provider initialized: r2" görmeli
```

### Migration hataları
```bash
# 1. Database URL kontrol et
echo $DATABASE_URL

# 2. Migration'ı tekrar çalıştır
cd packages/database
pnpm db:push

# 3. Veritabanında tabloları kontrol et
psql $DATABASE_URL -c "\dt"
```

### Sharp library hataları
```bash
# Sharp'ı tekrar yükle
pnpm install --force sharp

# Platform spesifik build
cd packages/server
pnpm rebuild sharp
```

## 📚 Daha Fazla Bilgi

- [R2 Setup Rehberi](./R2_SETUP.md) - Detaylı R2 kurulum
- [API Documentation](./API.md) - Tüm endpoint'ler
- [Architecture](./ARCHITECTURE.md) - Sistem mimarisi
- [GitHub Issues](https://github.com/prodobit/prodobit/issues) - Sorular ve bug reports

## 🎉 Başarılı!

Media modülü artık hazır! Artık şunları yapabilirsiniz:
- ✅ Item'lara image upload et
- ✅ Multiple images yönet
- ✅ Primary image seç
- ✅ Image sıralamasını değiştir
- ✅ Alt text ekle
- ✅ Storage stats görüntüle

Happy coding! 🚀
