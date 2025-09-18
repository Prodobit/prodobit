#!/usr/bin/env node

const { execSync } = require("child_process");
const path = require("path");

const packages = [
  "types",
  "config", 
  "database",
  "sdk",
  "server",
  "react-sdk",
  "business-ui",
];

async function publishPackages() {
  try {
    console.log("🔧 Preparing packages for publish...");
    execSync("node scripts/publish-prep.js", { stdio: "inherit" });

    console.log("\n📦 Building all packages...");
    execSync("pnpm build", { stdio: "inherit" });

    console.log("\n🚀 Publishing packages...");

    for (const pkg of packages) {
      console.log(`\n📤 Publishing @prodobit/${pkg}...`);
      try {
        execSync(`cd packages/${pkg} && npm publish --access public`, {
          stdio: "inherit",
        });
        console.log(`✅ Published @prodobit/${pkg}`);
      } catch (error) {
        console.error(`❌ Failed to publish @prodobit/${pkg}:`, error.message);
      }
    }

    console.log("\n📤 Publishing meta-package prodobit...");
    try {
      execSync("npm publish --access public", { stdio: "inherit" });
      console.log("✅ Published prodobit");
    } catch (error) {
      console.error("❌ Failed to publish prodobit:", error.message);
    }

    console.log("\n🎯 Preparing Flutter SDK for publish...");
    try {
      const flutterPath = path.join(process.cwd(), "packages", "flutter-sdk");
      
      console.log("📦 Getting Flutter dependencies...");
      execSync("flutter pub get", { cwd: flutterPath, stdio: "inherit" });
      
      console.log("🔍 Running Flutter analysis...");
      execSync("flutter analyze", { cwd: flutterPath, stdio: "inherit" });
      
      console.log("🧪 Running Flutter tests...");
      execSync("flutter test", { cwd: flutterPath, stdio: "inherit" });
      
      console.log("🔨 Running code generation...");
      execSync("flutter packages pub run build_runner build --delete-conflicting-outputs", { 
        cwd: flutterPath, 
        stdio: "inherit" 
      });
      
      console.log("🚀 Publishing Flutter SDK to pub.dev...");
      console.log("⚠️  Make sure you're logged in with 'dart pub login'");
      console.log("📤 Publishing Flutter SDK automatically...");
      
      // Auto-publish Flutter SDK 
      execSync("dart pub publish", { cwd: flutterPath, stdio: "inherit" });
      console.log("✅ Published Flutter SDK");
      
    } catch (error) {
      console.error("❌ Failed to publish Flutter SDK:", error.message);
    }
  } catch (error) {
    console.error("❌ Publish failed:", error.message);
  } finally {
    console.log("\n🔄 Restoring workspace references...");
    execSync("node scripts/publish-restore.js", { stdio: "inherit" });
  }
}

publishPackages();
