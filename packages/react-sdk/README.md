# @prodobit/react-sdk

React hooks and providers for Prodobit API.

## Installation

```bash
npm install @prodobit/react-sdk
```

## Usage

```typescript
import { ProdobitProvider, useAuth } from '@prodobit/react-sdk';

function App() {
  return (
    <ProdobitProvider>
      <MyComponent />
    </ProdobitProvider>
  );
}
```

## License

MIT