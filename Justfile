test:
    cargo test

lint:
    cargo fmt -- --check
    cargo clippy
