/**
 * Image Processing Service
 * Handles image resizing, optimization, and format conversion using Sharp
 */

import sharp, { type FormatEnum } from "sharp";

export interface ImageVariant {
  name: string;
  width?: number;
  height?: number;
  fit?: keyof sharp.FitEnum;
  format?: keyof FormatEnum;
  quality?: number;
}

export interface ProcessedImage {
  buffer: Buffer;
  width: number;
  height: number;
  format: string;
  size: number;
}

export interface ImageMetadata {
  width: number;
  height: number;
  format: string;
  size: number;
  hasAlpha: boolean;
  orientation?: number;
}

export class ImageProcessor {
  // Default variants for item images
  private readonly defaultVariants: ImageVariant[] = [
    {
      name: "thumbnail",
      width: 200,
      height: 200,
      fit: "cover",
      format: "webp",
      quality: 80,
    },
    {
      name: "medium",
      width: 800,
      height: 800,
      fit: "inside",
      format: "webp",
      quality: 85,
    },
    {
      name: "large",
      width: 1600,
      height: 1600,
      fit: "inside",
      format: "webp",
      quality: 90,
    },
  ];

  private readonly maxFileSize = 10 * 1024 * 1024; // 10MB
  private readonly supportedFormats = ["jpeg", "jpg", "png", "webp", "avif", "gif"];

  /**
   * Validate image file
   */
  async validate(buffer: Buffer): Promise<{ valid: boolean; error?: string }> {
    try {
      if (buffer.length > this.maxFileSize) {
        return {
          valid: false,
          error: `Image too large. Maximum size is ${this.maxFileSize / 1024 / 1024}MB`,
        };
      }

      const metadata = await sharp(buffer).metadata();

      if (!metadata.format) {
        return { valid: false, error: "Cannot determine image format" };
      }

      if (!this.supportedFormats.includes(metadata.format)) {
        return {
          valid: false,
          error: `Unsupported format: ${metadata.format}. Supported formats: ${this.supportedFormats.join(", ")}`,
        };
      }

      if (!metadata.width || !metadata.height) {
        return { valid: false, error: "Invalid image dimensions" };
      }

      return { valid: true };
    } catch (error) {
      return {
        valid: false,
        error: error instanceof Error ? error.message : "Invalid image file",
      };
    }
  }

  /**
   * Get image metadata
   */
  async getMetadata(buffer: Buffer): Promise<ImageMetadata> {
    const metadata = await sharp(buffer).metadata();

    return {
      width: metadata.width || 0,
      height: metadata.height || 0,
      format: metadata.format || "unknown",
      size: buffer.length,
      hasAlpha: metadata.hasAlpha || false,
      orientation: metadata.orientation,
    };
  }

  /**
   * Process image and create variants
   */
  async processVariants(
    buffer: Buffer,
    variants?: ImageVariant[]
  ): Promise<Map<string, ProcessedImage>> {
    const results = new Map<string, ProcessedImage>();
    const variantsToProcess = variants || this.defaultVariants;

    for (const variant of variantsToProcess) {
      const processed = await this.processVariant(buffer, variant);
      results.set(variant.name, processed);
    }

    return results;
  }

  /**
   * Process a single image variant
   */
  private async processVariant(
    buffer: Buffer,
    variant: ImageVariant
  ): Promise<ProcessedImage> {
    let pipeline = sharp(buffer);

    // Auto-rotate based on EXIF orientation
    pipeline = pipeline.rotate();

    // Resize if dimensions specified
    if (variant.width || variant.height) {
      pipeline = pipeline.resize(variant.width, variant.height, {
        fit: variant.fit || "cover",
        withoutEnlargement: true, // Don't upscale images
        background: { r: 255, g: 255, b: 255, alpha: 0 }, // Transparent background
      });
    }

    // Convert format and optimize
    const format = variant.format || "webp";
    const quality = variant.quality || 85;

    switch (format) {
      case "jpeg":
      case "jpg":
        pipeline = pipeline.jpeg({
          quality,
          progressive: true,
          mozjpeg: true, // Use mozjpeg for better compression
        });
        break;

      case "png":
        pipeline = pipeline.png({
          quality,
          compressionLevel: 9,
          progressive: true,
        });
        break;

      case "webp":
        pipeline = pipeline.webp({
          quality,
          effort: 6, // 0-6, higher = better compression but slower
        });
        break;

      case "avif":
        pipeline = pipeline.avif({
          quality,
          effort: 6,
        });
        break;
    }

    // Process and get metadata
    const processedBuffer = await pipeline.toBuffer();
    const metadata = await sharp(processedBuffer).metadata();

    return {
      buffer: processedBuffer,
      width: metadata.width || 0,
      height: metadata.height || 0,
      format: metadata.format || format,
      size: processedBuffer.length,
    };
  }

  /**
   * Optimize image without resizing
   */
  async optimize(buffer: Buffer, format: keyof FormatEnum = "webp"): Promise<Buffer> {
    return sharp(buffer)
      .rotate() // Auto-rotate
      .toFormat(format, {
        quality: 85,
      })
      .toBuffer();
  }

  /**
   * Convert image to specific format
   */
  async convert(
    buffer: Buffer,
    toFormat: keyof FormatEnum,
    quality = 85
  ): Promise<Buffer> {
    return sharp(buffer).toFormat(toFormat, { quality }).toBuffer();
  }

  /**
   * Create a thumbnail (quick method)
   */
  async createThumbnail(
    buffer: Buffer,
    size = 200,
    format: keyof FormatEnum = "webp"
  ): Promise<Buffer> {
    return sharp(buffer)
      .rotate()
      .resize(size, size, {
        fit: "cover",
        position: "center",
      })
      .toFormat(format, { quality: 80 })
      .toBuffer();
  }

  /**
   * Extract dominant color from image
   */
  async getDominantColor(buffer: Buffer): Promise<string> {
    const result = await sharp(buffer)
      .resize(1, 1, { fit: "cover" })
      .raw()
      .toBuffer({ resolveWithObject: true });

    const [r, g, b] = result.data;
    return `#${r.toString(16).padStart(2, "0")}${g.toString(16).padStart(2, "0")}${b.toString(16).padStart(2, "0")}`;
  }
}
