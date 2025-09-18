#!/usr/bin/env node

const fs = require('fs');
const path = require('path');

// Get current version from package.json
const rootPkg = JSON.parse(fs.readFileSync('package.json', 'utf8'));
const currentVersion = rootPkg.version;

const packagesDir = path.join(__dirname, '../packages');
const packages = fs.readdirSync(packagesDir);

console.log(`Preparing packages for publish (v${currentVersion})...`);

// Update Flutter SDK pubspec.yaml version
const flutterPubspecPath = path.join(packagesDir, 'flutter-sdk', 'pubspec.yaml');
if (fs.existsSync(flutterPubspecPath)) {
  let pubspecContent = fs.readFileSync(flutterPubspecPath, 'utf8');
  const versionRegex = /^version:\s*[\d.]+$/m;
  
  if (versionRegex.test(pubspecContent)) {
    pubspecContent = pubspecContent.replace(versionRegex, `version: ${currentVersion}`);
    fs.writeFileSync(flutterPubspecPath, pubspecContent);
    console.log(`✅ Updated Flutter SDK to v${currentVersion}`);
  }
}

packages.forEach(pkg => {
  const pkgPath = path.join(packagesDir, pkg, 'package.json');
  
  if (fs.existsSync(pkgPath)) {
    const pkgJson = JSON.parse(fs.readFileSync(pkgPath, 'utf8'));
    let changed = false;

    // Update version to match root
    if (pkgJson.version !== currentVersion) {
      pkgJson.version = currentVersion;
      changed = true;
    }

    // Update prodobit package dependencies to current version
    ['dependencies', 'devDependencies', 'peerDependencies'].forEach(depType => {
      if (pkgJson[depType]) {
        Object.keys(pkgJson[depType]).forEach(dep => {
          if (dep.startsWith('@prodobit/')) {
            const targetVersion = `^${currentVersion}`;
            if (pkgJson[depType][dep] === 'workspace:*' || pkgJson[depType][dep] !== targetVersion) {
              pkgJson[depType][dep] = targetVersion;
              changed = true;
            }
          }
        });
      }
    });

    if (changed) {
      fs.writeFileSync(pkgPath, JSON.stringify(pkgJson, null, 2) + '\n');
      console.log(`✅ Updated ${pkg}`);
    }
  }
});

// Update root package.json dependencies
console.log('Updating root package.json dependencies...');
let rootChanged = false;

if (rootPkg.dependencies) {
  Object.keys(rootPkg.dependencies).forEach(dep => {
    if (dep.startsWith('@prodobit/') && rootPkg.dependencies[dep] !== `^${currentVersion}`) {
      rootPkg.dependencies[dep] = `^${currentVersion}`;
      rootChanged = true;
    }
  });
}

if (rootChanged) {
  fs.writeFileSync('package.json', JSON.stringify(rootPkg, null, 2) + '\n');
  console.log('✅ Updated root package.json dependencies');
}

console.log('✅ All packages prepared for publish');