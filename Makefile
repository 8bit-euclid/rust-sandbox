SHELL := /bin/bash
.PHONY: all help clean build run test check lint fmt doc install update release debug ci bench

# Default target
help: ## Show this help message
	@echo "Available targets:"
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "  \033[36m%-15s\033[0m %s\n", $$1, $$2}'

# Build targets
all: clean fmt lint test build ## Run clean, format, lint, test, and build

build: ## Build the project in debug mode
	@echo "Building in debug mode..."
	@cargo build

release: ## Build the project in release mode (optimized)
	@echo "Building in release mode..."
	@cargo build --release

debug: ## Build the project with debug symbols
	@echo "Building with debug symbols..."
	@cargo build --profile dev

ci: fmt-check lint test ## Run CI checks (format check, lint, test)
	@echo "Running CI checks..."

# Run targets
run: ## Run the project
	@echo "Running the project..."
	@cargo run

run-release: ## Run the project in release mode
	@echo "Running the project in release mode..."
	@cargo run --release

# Testing targets
test: ## Run all tests
	@echo "Running tests..."
	@cargo test
	@cargo test --all-features

test-verbose: ## Run tests with verbose output
	@echo "Running tests with verbose output..."
	@cargo test -- --nocapture

test-ignored: ## Run ignored tests
	@echo "Running ignored tests..."
	@cargo test -- --ignored

bench: ## Run benchmarks (if any)
	@echo "Running benchmarks..."
	@cargo bench

# Code quality targets
check: ## Check the project for errors without building
	@echo "Checking the project for errors..."
	@cargo check

lint: ## Lint the project using clippy
	@echo "Linting the project..."
	@cargo clippy -- -D warnings

lint-fix: ## Automatically fix clippy warnings where possible
	@echo "Fixing clippy warnings..."
	@cargo clippy --fix --allow-dirty --allow-staged

format: ## Format the code using rustfmt
	@echo "Formatting the code..."
	@cargo fmt --all

format-check: ## Check if code is formatted correctly
	@echo "Checking code formatting..."
	@cargo fmt  --all -- --check

# Documentation targets
doc: ## Generate documentation
	@echo "Generating documentation..."
	@cargo doc

# Dependency management
update: ## Update dependencies
	@echo "Updating dependencies..."
	@cargo update

install: ## Install the binary locally
	@echo "Installing the binary locally..."
	@cargo install --path .

# Maintenance targets
clean: ## Clean build artifacts
	@echo "Cleaning build artifacts..."
	@cargo clean

clean-all: ## Clean everything including cargo cache
	@echo "Cleaning everything..."
	@cargo clean
	@rm -rf ~/.cargo/registry/cache/
	@rm -rf ~/.cargo/git/db/