// Prodobit Meta-Package
// This package includes all Prodobit modules

module.exports = {
  // Re-export all packages for convenience
  types: require('@prodobit/types'),
  config: require('@prodobit/config'), 
  database: require('@prodobit/database'),
  sdk: require('@prodobit/sdk'),
  reactSdk: require('@prodobit/react-sdk'),
  server: require('@prodobit/server')
};