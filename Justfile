# Default recipe to display available commands
default:
    @just --list

# Build the project
build:
    cargo build --verbose

# Run tests
test:
    cargo test --verbose

# Format code
fmt:
    cargo fmt

# Check formatting without modifying files
fmt-check:
    cargo fmt -- --check

# Run clippy linter
clippy:
    cargo clippy -- -D warnings

# Run all linting checks
lint: fmt-check clippy
    cargo check

# Run security audit
audit:
    cargo audit

# Clean build artifacts
clean:
    cargo clean

# Run all checks (lint and test)
ci: lint test

# Run everything including audit
all: lint test audit
