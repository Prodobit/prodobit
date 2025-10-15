# Cloudflare R2 Storage - Kurulum Rehberi

Media modülü için Cloudflare R2 storage kurulum rehberi.

## 📦 Neden R2?

- ✅ **Ücretsiz egress**: Sınırsız download ücretsiz
- ✅ **S3 compatible**: Standart S3 API kullanır
- ✅ **Hızlı**: Global edge network
- ✅ **Ekonomik**: $0.015/GB storage (S3'ten ucuz)
- ✅ **Kolay setup**: Dakikalar içinde hazır

## 🚀 Adım 1: Cloudflare R2 Bucket Oluştur

### 1.1 Cloudflare Dashboard'a Git
```
https://dash.cloudflare.com/
```

### 1.2 R2'ye Git
- Sol menüden **R2** seçeneğine tıkla
- "Purchase R2" butonuna tıkla (ücretsiz başlar)

### 1.3 Bucket Oluştur
1. **"Create Bucket"** butonuna tıkla
2. **Bucket Name**: `prodobit-media` (veya istediğin isim)
3. **Location**: En yakın region'ı seç (örn: Western Europe)
4. **"Create Bucket"** butonuna tıkla

## 🔑 Adım 2: API Token Oluştur

### 2.1 R2 API Tokens'a Git
```
R2 → Manage R2 API Tokens → Create API Token
```

### 2.2 Token Ayarları
```
Token Name: Prodobit Media Access
Permissions:
  ☑ Object Read & Write
  ☑ Bucket List (opsiyonel)
TTL: Forever (veya istediğin süre)
Scope: Apply to specific buckets only
Selected Bucket: prodobit-media
```

### 2.3 Token Bilgilerini Kaydet
Create ettikten sonra göreceksin:
```
Access Key ID: abcd1234...
Secret Access Key: xyz789...
```

⚠️ **ÖNEMLİ**: Bu bilgileri hemen kopyala ve güvenli sakla. Tekrar gösterilmez!

## 🌐 Adım 3: Public URL Ayarla

İki seçenek var:

### Seçenek A: R2.dev Subdomain (Ücretsiz ve Basit) ⭐ Önerilen

1. Bucket'ını aç
2. **Settings** → **Public Access**
3. **"Allow Access"** butonuna tıkla
4. **"Enable R2.dev subdomain"** seçeneğini aktif et
5. Public URL'i kopyala: `https://pub-xxxxxxxxxxxxx.r2.dev`

### Seçenek B: Custom Domain (Profesyonel)

1. Bucket Settings → **Custom Domains**
2. **"Connect Domain"** butonuna tıkla
3. Domain gir: `media.prodobit.com`
4. DNS kayıtlarını ekle (Cloudflare otomatik ekler)
5. SSL sertifikası otomatik oluşur

## ⚙️ Adım 4: Environment Variables Ayarla

### 4.1 Account ID'yi Bul
```
Cloudflare Dashboard → R2 (sağ üst köşede görünür)
Account ID: 1a2b3c4d5e6f...
```

### 4.2 .env Dosyasını Güncelle

**Development için** (`.env`):
```env
# Storage Configuration
STORAGE_PROVIDER=r2

# Cloudflare R2 Settings
R2_ACCOUNT_ID=1a2b3c4d5e6f7g8h9i0j
R2_ACCESS_KEY_ID=abcd1234efgh5678ijkl9012
R2_SECRET_ACCESS_KEY=aBcDeFgHiJkLmNoPqRsTuVwXyZ1234567890ABCD
R2_BUCKET=prodobit-media
R2_PUBLIC_URL=https://pub-xxxxxxxxxxxxx.r2.dev
```

**Production için** (DigitalOcean, Railway, etc.):
Environment variables'ları platform ayarlarından ekle.

## 🧪 Adım 5: Test Et

### 5.1 Connection Test Script

```typescript
// test-r2.ts
import { StorageFactory } from './packages/server/src/modules/media/storage/StorageFactory.js';

async function testR2() {
  try {
    const storage = StorageFactory.createFromEnv();
    console.log('✅ R2 connection successful!');
    console.log('Provider:', storage.name);

    // Test file upload
    const testContent = Buffer.from('Hello R2!');
    await storage.upload({
      key: 'test/hello.txt',
      buffer: testContent,
      contentType: 'text/plain',
      metadata: {}
    });
    console.log('✅ Test upload successful!');

    // Clean up
    await storage.delete({ key: 'test/hello.txt' });
    console.log('✅ Test cleanup successful!');
  } catch (error) {
    console.error('❌ R2 test failed:', error);
  }
}

testR2();
```

Çalıştır:
```bash
tsx test-r2.ts
```

### 5.2 Server ile Test

```bash
# Server'ı başlat
cd saas-server
pnpm dev

# Başlangıç loglarında göreceksin:
# ✅ Storage provider initialized: r2
# 📁 Media module enabled - Ready to manage files!
```

### 5.3 API ile Test

```bash
# Token al (önce login ol)
TOKEN="your_access_token"

# Test upload
curl -X POST http://localhost:3000/api/v1/media/items/ITEM_ID/images \
  -H "Authorization: Bearer $TOKEN" \
  -F "file=@test-image.jpg" \
  -F "altText=Test image"

# Response:
{
  "data": {
    "itemImage": { ... },
    "media": { ... },
    "variants": {
      "thumbnail": "https://pub-xxx.r2.dev/...",
      "medium": "https://pub-xxx.r2.dev/...",
      "large": "https://pub-xxx.r2.dev/..."
    }
  }
}
```

## 🎨 Adım 6: CORS Ayarları (Opsiyonel)

Eğer browser'dan direkt upload yapacaksan:

### 6.1 Bucket CORS Ayarları
```
Bucket Settings → CORS Policy
```

### 6.2 CORS JSON
```json
{
  "AllowedOrigins": [
    "http://localhost:3000",
    "https://yourdomain.com"
  ],
  "AllowedMethods": ["GET", "PUT", "POST", "DELETE"],
  "AllowedHeaders": ["*"],
  "ExposeHeaders": ["ETag"],
  "MaxAgeSeconds": 3600
}
```

## 📊 Kullanım ve Maliyet İzleme

### Dashboard'da İzle
```
R2 → Buckets → prodobit-media → Metrics
```

Göreceksin:
- Storage kullanımı (GB)
- Request sayısı
- Egress (download) - R2'de ücretsiz! 🎉

### Maliyet Hesaplama (2024)
```
Storage: $0.015/GB/month
Class A operations (write): $4.50/million
Class B operations (read): $0.36/million
Egress: ÜCRETSİZ! 🎉

Örnek: 10GB storage, 100k upload, 1M download
= $0.15 (storage) + $0.45 (write) + $0 (egress)
= $0.60/ay
```

## 🔐 Güvenlik Best Practices

### 1. API Token Güvenliği
- ✅ Token'ları asla git'e commit etme
- ✅ `.env` dosyasını `.gitignore`'a ekle
- ✅ Production'da environment variables kullan
- ✅ Read-only token'lar oluştur (gereksiz write verme)

### 2. Bucket Access Control
- ✅ Sadece gerekli bucket'lara erişim ver
- ✅ Token TTL kullan (expire süresi)
- ✅ IP whitelist kullan (gerekirse)

### 3. File Validation
- ✅ File type kontrolü (MIME type)
- ✅ File size limiti
- ✅ Virus scanning (production için)

## 🚨 Troubleshooting

### Problem: "Invalid credentials"
```bash
# Account ID'yi kontrol et
echo $R2_ACCOUNT_ID

# Token'ı kontrol et
echo $R2_ACCESS_KEY_ID

# .env dosyasını reload et
source .env
```

### Problem: "Bucket not found"
```bash
# Bucket ismini kontrol et
echo $R2_BUCKET

# Cloudflare Dashboard'dan bucket'ın var olduğunu doğrula
```

### Problem: "Access denied"
```bash
# Token permissions'ı kontrol et
# Object Read & Write olmalı

# Token'ın doğru bucket'a scope edildiğini kontrol et
```

### Problem: Images yüklenmiyor
```bash
# Storage provider'ı kontrol et
echo $STORAGE_PROVIDER  # "r2" olmalı

# Server loglarını kontrol et
# "Storage provider initialized: r2" görmeli
```

## 📚 Daha Fazla Bilgi

- [Cloudflare R2 Docs](https://developers.cloudflare.com/r2/)
- [R2 Pricing](https://www.cloudflare.com/products/r2/)
- [R2 API Reference](https://developers.cloudflare.com/r2/api/s3/)
- [S3 Compatible APIs](https://docs.aws.amazon.com/AmazonS3/latest/API/Welcome.html)

## 🎯 Hızlı Başlangıç Özeti

```bash
# 1. R2 bucket oluştur (Cloudflare Dashboard)
# 2. API token al
# 3. .env dosyasını güncelle
# 4. Server'ı başlat

cd saas-server
pnpm dev

# ✅ Hazır! Media upload artık çalışıyor
```

## 💡 Pro Tips

1. **Multiple Buckets**: Dev, staging, prod için ayrı bucket'lar kullan
2. **Lifecycle Rules**: Eski dosyaları otomatik sil (R2'de yakında gelecek)
3. **CDN**: Custom domain kullanarak Cloudflare CDN'den faydalanılır
4. **Monitoring**: Cloudflare Analytics'i etkinleştir
5. **Backup**: Önemli dosyalar için S3'e backup yap

---

Sorular için: [GitHub Issues](https://github.com/prodobit/prodobit/issues)
