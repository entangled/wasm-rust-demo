# ~/~ begin <<docs/index.md#scripts/deploy.sh>>[init]
#| requires: pkg/wasm_entangled_demo.js pkg/wasm_entangled_demo_bg.wasm
#| creates: docs/js/wasm_entangled_demo.js docs/js/wasm_entangled_demo_bg.wasm
#| collect: build

cp pkg/* docs/js/
# ~/~ end