#!/usr/bin/env node

const { execSync } = require("child_process");
const path = require("path");

async function publishFlutterSDK() {
  try {
    console.log("🔧 Preparing Flutter SDK for publish...");
    
    // Change to Flutter SDK directory
    const flutterPath = path.join(process.cwd(), "packages", "flutter-sdk");
    process.chdir(flutterPath);
    
    console.log("\n📦 Getting Flutter dependencies...");
    execSync("flutter pub get", { stdio: "inherit" });
    
    console.log("\n🔍 Running Flutter analysis...");
    execSync("flutter analyze", { stdio: "inherit" });
    
    console.log("\n🧪 Running Flutter tests...");
    execSync("flutter test", { stdio: "inherit" });
    
    console.log("\n🔨 Running code generation...");
    execSync("flutter packages pub run build_runner build --delete-conflicting-outputs", { 
      stdio: "inherit" 
    });
    
    console.log("\n🚀 Publishing to pub.dev...");
    console.log("⚠️  Make sure you're logged in with 'dart pub login'");
    console.log("📤 Run the following command manually to publish:");
    console.log("   cd packages/flutter-sdk && dart pub publish");
    
    // Note: We don't auto-publish to pub.dev for safety
    // execSync("dart pub publish", { stdio: "inherit" });
    
    console.log("\n✅ Flutter SDK is ready for publish!");
    
  } catch (error) {
    console.error("❌ Flutter SDK publish preparation failed:", error.message);
    process.exit(1);
  }
}

publishFlutterSDK();