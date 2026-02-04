# Homebrew Tap for SchemaHero

This is the official Homebrew tap for [SchemaHero](https://schemahero.io), the Kubernetes-native database schema management tool.

## Installation

```bash
# Add the tap
brew tap schemahero/tap

# Install SchemaHero CLI
brew install schemahero

# Or install the kubectl plugin
brew install kubectl-schemahero
```

## Updating

```bash
brew update
brew upgrade schemahero
```

## Available Formulas

| Formula | Description |
|---------|-------------|
| `schemahero` | The SchemaHero CLI for database schema management |
| `kubectl-schemahero` | Kubectl plugin for SchemaHero (Kubernetes operator workflow) |

## Usage

After installation:

```bash
# Check version
schemahero version

# Plan changes
schemahero plan --driver postgres --uri "postgres://..." --spec-file schema.yaml

# Apply changes
schemahero apply --driver postgres --uri "postgres://..." --ddl "ALTER TABLE..."
```

## Documentation

- [SchemaHero Documentation](https://schemahero.io)
- [GitHub Repository](https://github.com/schemahero/schemahero)

## License

Apache 2.0
