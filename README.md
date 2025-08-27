# Prodobit

Open-core business application development platform built with TypeScript.

## Installation

Install all Prodobit packages at once:

```bash
npm install prodobit
```

Or install individual packages:

```bash
npm install @prodobit/sdk
npm install @prodobit/react-sdk  
npm install @prodobit/types
npm install @prodobit/config
npm install @prodobit/database
npm install @prodobit/server
```

## Packages

- **@prodobit/types** - Core types and validation schemas
- **@prodobit/config** - Configuration management system  
- **@prodobit/database** - Database schema with Drizzle ORM
- **@prodobit/sdk** - TypeScript API client
- **@prodobit/react-sdk** - React hooks and providers
- **@prodobit/server** - Modular server core

## 🚀 Development Setup

### Prerequisites

- Node.js 20+
- pnpm 9+
- Docker & Docker Compose

### Installation

```bash
# Install dependencies
pnpm install

# Start PostgreSQL database
docker-compose up -d postgres

# Generate database schema
pnpm db:generate

# Run database migrations
pnpm db:migrate

# Start development servers
pnpm dev
```

## 📁 Project Structure

```
├── packages/
│   ├── types/          # Type definitions with Arktype
│   ├── database/       # Drizzle ORM schema
│   └── sdk/           # TypeScript SDK
├── apps/
│   └── api/           # Hono API server
├── examples/
│   └── react-app/     # React example
└── docker-compose.yml
```

## 🛠 Development Commands

```bash
# Development
pnpm dev                # Start all dev servers
pnpm build             # Build all packages
pnpm typecheck         # Type checking
pnpm lint              # Lint with Biome
pnpm format            # Format with Biome

# Database
pnpm db:generate       # Generate migrations
pnpm db:migrate        # Run migrations
pnpm db:studio         # Open Drizzle Studio
```

## 🐳 Docker

```bash
# Start full stack with database
docker-compose up

# API only
docker-compose up api

# Database only
docker-compose up postgres
```

## 📚 URLs

- API: http://localhost:3001
- React App: http://localhost:3000
- Health Check: http://localhost:3001/health

## 🏗 Tech Stack

- **Framework**: Hono
- **Database**: PostgreSQL + Drizzle ORM
- **Types**: Arktype
- **Tooling**: Biome, Turbo
- **Runtime**: Node.js (Docker), Cloudflare Workers (planned)