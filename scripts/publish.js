#!/usr/bin/env node

const { execSync } = require('child_process');
const path = require('path');

const packages = [
  'types',
  'config', 
  'database',
  'sdk',
  'react-sdk',
  'server'
];

async function publishPackages() {
  try {
    console.log('🔧 Preparing packages for publish...');
    execSync('node scripts/publish-prep.js', { stdio: 'inherit' });

    console.log('\n📦 Building all packages...');
    execSync('pnpm build', { stdio: 'inherit' });

    console.log('\n🚀 Publishing packages...');
    
    for (const pkg of packages) {
      console.log(`\n📤 Publishing @prodobit/${pkg}...`);
      try {
        execSync(`cd packages/${pkg} && npm publish --access public`, { stdio: 'inherit' });
        console.log(`✅ Published @prodobit/${pkg}`);
      } catch (error) {
        console.error(`❌ Failed to publish @prodobit/${pkg}:`, error.message);
      }
    }

    console.log('\n📤 Publishing meta-package prodobit...');
    try {
      execSync('npm publish --access public', { stdio: 'inherit' });
      console.log('✅ Published prodobit');
    } catch (error) {
      console.error('❌ Failed to publish prodobit:', error.message);
    }

  } catch (error) {
    console.error('❌ Publish failed:', error.message);
  } finally {
    console.log('\n🔄 Restoring workspace references...');
    execSync('node scripts/publish-restore.js', { stdio: 'inherit' });
  }
}

publishPackages();