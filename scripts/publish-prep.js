#!/usr/bin/env node

const fs = require('fs');
const path = require('path');

// Get current version from package.json
const rootPkg = JSON.parse(fs.readFileSync('package.json', 'utf8'));
const currentVersion = rootPkg.version;

const packagesDir = path.join(__dirname, '../packages');
const packages = fs.readdirSync(packagesDir);

console.log(`Preparing packages for publish (v${currentVersion})...`);

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

    // Replace workspace:* with actual versions
    ['dependencies', 'devDependencies', 'peerDependencies'].forEach(depType => {
      if (pkgJson[depType]) {
        Object.keys(pkgJson[depType]).forEach(dep => {
          if (dep.startsWith('@prodobit/') && pkgJson[depType][dep] === 'workspace:*') {
            pkgJson[depType][dep] = `^${currentVersion}`;
            changed = true;
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

console.log('✅ All packages prepared for publish');