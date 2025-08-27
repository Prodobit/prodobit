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

console.log('✅ All workspace references restored');