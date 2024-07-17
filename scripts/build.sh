# ~/~ begin <<docs/index.md#scripts/build.sh>>[init]
#| requires: src/lib.rs Cargo.toml
#| creates: docs/js/wasm_entangled_demo.js docs/js/wasm_entangled_demo_bg.wasm
#| collect: build

wasm-pack build --target web --out-dir docs/js
# ~/~ end