# 🎮 Dojo Game Starter

> **The fastest way to build onchain games on Starknet**
> From zero to deployed in 5 minutes ⚡

<div align="center">
  <img src="./client/src/assets/Dojo-Logo-Stylized-Red.svg" alt="Dojo Engine" height="60"/>
  &nbsp;&nbsp;&nbsp;
  <img src="./client/src/assets/DojoByExample_logo.svg" alt="Dojo by Example" height="60"/>
  &nbsp;&nbsp;&nbsp;
  <img src="./client/src/assets/SN-Linear-Gradient.svg" alt="Starknet" height="60"/>
</div>

## ✨ What's Included

**🎨 Frontend Ready**
- React + Vite + TypeScript with complete Dojo integration
- Cartridge Controller wallet integration with session policies
- Real-time game UI with optimistic updates
- Comprehensive hooks for blockchain operations

**⚙️ Backend Complete**
- Cairo smart contracts with Dojo Engine architecture
- Player progression system with experience, health, and coins
- Integrated achievement system with 5+ achievements
- Production-ready deployment configuration

## 🛠️ Tech Stack

```
Frontend: React + Vite + TypeScript + TailwindCSS + Zustand
Backend:  Cairo + Dojo Engine + Torii GraphQL Indexer
Network:  Starknet (Local/Sepolia/Mainnet)
Wallet:   Cartridge Controller
```

## 📦 Project Structure

```
dojo-game-starter/
├── 📱 client/                    # Complete React + Dojo integration
│   ├── src/dojo/                 # Core Dojo integration files
│   │   ├── bindings.ts           # TypeScript interfaces from Cairo
│   │   ├── dojoConfig.ts         # Network and connection configuration
│   │   ├── contracts.gen.ts      # Auto-generated contract functions
│   │   └── hooks/                # Custom React hooks for blockchain
│   ├── docs/                     # 📚 Complete integration documentation
│   └── README.md                 # Frontend-specific documentation
├── ⚙️ contract/                 # Cairo smart contracts
│   ├── src/
│   │   ├── models/               # Data entities (Player model)
│   │   ├── systems/              # Game logic (train, mine, rest)
│   │   ├── achievements/         # Achievement system implementation
│   │   └── store/                # Data layer abstraction
│   └── README.md                 # Backend development and deployment guide
└── tests/                        # Integration tests
```

## 📚 Documentation

### **🎨 Frontend Integration**
The `client/` directory contains a complete React + Dojo integration with comprehensive documentation:

📖 **[Client Documentation](./client/README.md)** - Start here for frontend development

**Complete Integration Guide Series:**
- **[01. Overview](./client/docs/01-overview.md)** - Architecture and concepts
- **[02. Architecture](./client/docs/02-architecture.md)** - System design patterns
- **[03. Core Files](./client/docs/03-core-files.md)** - Essential integration files
- **[04. Zustand State Management](./client/docs/04-zustand-state-management.md)** - Optimistic updates
- **[05. Cartridge Controller](./client/docs/05-cartridge-controller.md)** - Gaming wallet UX
- **[06. React Hooks Pattern](./client/docs/06-react-hooks-pattern.md)** - Blockchain hooks
- **[07. Data Flow](./client/docs/07-data-flow.md)** - Request/response cycles
- **[08. Extending the System](./client/docs/08-extending-system.md)** - Building your game

### **⚙️ Backend Development**
The `contract/` directory contains Cairo smart contracts with Dojo Engine:

📖 **[Contracts Documentation](./contract/README.md)** - Backend development guide

**Key Topics Covered:**
- **Project Structure** - Models, Systems, Store architecture
- **Game Mechanics** - Player actions (spawn, train, mine, rest)
- **Achievement System** - Complete trophy/task implementation
- **Local Development** - Katana, Sozo, Torii setup
- **Sepolia Deployment** - Production deployment process
- **Testing Strategy** - Integration tests and best practices

## 🎮 Game Mechanics

The starter demonstrates essential onchain game patterns:

| Action | Effect | Demonstrates |
|--------|--------|--------------|
| 🏋️ **Train** | +10 Experience | Pure advancement mechanics |
| ⛏️ **Mine** | +5 Coins, -5 Health | Risk/reward decision making |
| 💤 **Rest** | +20 Health | Resource management systems |

**🏆 Achievement System:**
- **MiniGamer** (1 action) → **SenseiGamer** (50 actions)
- Complete integration with frontend achievement display
- Automatic progress tracking for all game actions

## 🎯 Perfect For

- 🏆 **Hackathon teams** needing rapid onchain game setup
- 🎮 **Game developers** entering Web3 with production patterns
- 🏢 **Studios** prototyping blockchain games with real UX
- 📚 **Developers** learning Starknet + Dojo with comprehensive examples

## 🚀 Key Features

**⚡ Gaming-First UX**
- Cartridge Controller integration eliminates wallet friction
- Session policies enable uninterrupted gameplay
- Optimistic updates provide instant feedback
- Background blockchain confirmation

**🔧 Developer Experience**
- Complete TypeScript integration end-to-end
- Hot reload with contract changes
- Comprehensive error handling patterns
- Production deployment configurations

**🏗️ Scalable Architecture**
- Modular component design for easy extension
- Reusable hooks for blockchain operations
- Clean separation between UI and blockchain logic
- Performance optimizations built-in

## 🚀 Quick Start - Local Development

### Prerequisites

Before you begin, ensure you have the following installed:

- **Dojo Tools**: Install the complete Dojo toolchain
  ```bash
  curl -L https://install.dojoengine.org | bash
  dojoup
  ```
  This installs: `katana` (local blockchain), `sozo` (contract deployment), and `torii` (GraphQL indexer)

- **Node.js & npm**: For frontend development (v18.18+ recommended)
- **jq**: JSON processor for extracting configuration
  ```bash
  brew install jq  # macOS
  apt-get install jq  # Linux
  ```

### One-Command Local Development

The project includes a unified development workflow that orchestrates all services:

```bash
# Install dependencies
npm install

# Start everything: local chain, deploy contracts, and run client
npm run dev:local
```

This single command:
1. ✅ Validates all dependencies are installed
2. 🔗 Starts Katana local blockchain (port 5050)
3. ⏳ Waits for blockchain to be ready
4. 🚀 Builds and deploys smart contracts
5. 💾 Extracts and saves the world address
6. 📊 Starts Torii GraphQL indexer (port 8080)
7. 🎨 Launches client development server (HTTPS)

### Available Commands

**Core Development:**
```bash
npm run dev:local          # Complete local environment (all services)
npm run clean              # Stop all services and clean generated files
npm run reset              # Clean + reinstall + restart everything
```

**Individual Services:**
```bash
npm run chain:start        # Start Katana blockchain only
npm run chain:wait         # Wait for Katana to be ready
npm run chain:stop         # Stop Katana blockchain
npm run contracts:build    # Build Cairo contracts
npm run contracts:deploy   # Build and deploy contracts
npm run contracts:test     # Run contract tests
npm run torii:start        # Start Torii indexer
npm run client:dev         # Start client dev server
npm run client:build       # Build client for production
```

**Utilities:**
```bash
npm run deps:check         # Verify all dependencies installed
npm run world:save         # Extract and save world address
npm run chain:log          # View Katana logs in real-time
```

### Troubleshooting

**Port Already in Use:**
```bash
npm run chain:stop         # Kill any existing Katana process
lsof -ti:5050 | xargs kill -9  # Force kill port 5050
lsof -ti:8080 | xargs kill -9  # Force kill port 8080
```

**Contract Deployment Failed:**
```bash
npm run clean              # Clean everything
npm run contracts:deploy   # Try deploying again
```

**World Address Not Found:**
```bash
# Ensure contracts are deployed first
npm run contracts:deploy
npm run world:save
```

**Dependency Check Fails:**
- Install Dojo: `curl -L https://install.dojoengine.org | bash && dojoup`
- Install jq: `brew install jq` (macOS) or `apt-get install jq` (Linux)

## 🌟 Getting Started

1. **For Quick Local Setup:** Follow [Quick Start - Local Development](#-quick-start---local-development) above
2. **For Frontend Development:** Start with [Client README](./client/README.md)
3. **For Backend Development:** Check [Contracts README](./contract/README.md)
4. **For Complete Understanding:** Follow the [Integration Guide Series](./client/docs/)

## 🔗 Links

- **[Starknet](https://starknet.io)**
- **[Dojo Engine](https://dojoengine.org)**
- **[Cairo](https://cairo-lang.org)**
- **[Cartridge](https://cartridge.gg)**

---

**Built with ❤️ for the Starknet gaming community**
