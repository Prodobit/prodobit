#!/usr/bin/env node

const fs = require('fs');
const path = require('path');

const packagesDir = path.join(__dirname, '../packages');
const packages = fs.readdirSync(packagesDir);

console.log('Restoring workspace references...');

packages.forEach(pkg => {
  const pkgPath = path.join(packagesDir, pkg, 'package.json');
  
  if (fs.existsSync(pkgPath)) {
    const pkgJson = JSON.parse(fs.readFileSync(pkgPath, 'utf8'));
    let changed = false;

    // Restore workspace:* references
    ['dependencies', 'devDependencies', 'peerDependencies'].forEach(depType => {
      if (pkgJson[depType]) {
        Object.keys(pkgJson[depType]).forEach(dep => {
          if (dep.startsWith('@prodobit/') && pkgJson[depType][dep].startsWith('^')) {
            pkgJson[depType][dep] = 'workspace:*';
            changed = true;
          }
        });
      }
    });

    if (changed) {
      fs.writeFileSync(pkgPath, JSON.stringify(pkgJson, null, 2) + '\n');
      console.log(`✅ Restored ${pkg}`);
    }
  }
});

// Restore root package.json dependencies
console.log('Restoring root package.json dependencies...');
const rootPkg = JSON.parse(fs.readFileSync('package.json', 'utf8'));
let rootChanged = false;

if (rootPkg.dependencies) {
  Object.keys(rootPkg.dependencies).forEach(dep => {
    if (dep.startsWith('@prodobit/') && rootPkg.dependencies[dep].startsWith('^')) {
      rootPkg.dependencies[dep] = 'workspace:*';
      rootChanged = true;
    }
  });
}

if (rootChanged) {
  fs.writeFileSync('package.json', JSON.stringify(rootPkg, null, 2) + '\n');
  console.log('✅ Restored root package.json dependencies');
}

// Restore Flutter SDK pubspec.yaml version to a development version
const flutterPubspecPath = path.join(__dirname, '../packages/flutter-sdk/pubspec.yaml');
if (fs.existsSync(flutterPubspecPath)) {
  let pubspecContent = fs.readFileSync(flutterPubspecPath, 'utf8');
  const versionRegex = /^version:\s*[\d.]+$/m;
  
  if (versionRegex.test(pubspecContent)) {
    // Keep the published version for now - no need to change back
    console.log('✅ Flutter SDK version maintained');
  }
}

console.log('✅ All workspace references restored');