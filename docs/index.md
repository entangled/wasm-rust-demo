# Introduction

<script type="module">
   import init, { greet } from './js/wasm_entangled_demo.js';

   async function run() {
     await init();
     greet();
   }

   run();
</script>

<div id=demo>
</div>

## Building

``` {.bash .task file=scripts/build.sh}
#| requires: src/lib.rs Cargo.toml
#| creates: docs/js/wasm_entangled_demo.js docs/js/wasm_entangled_demo_bg.wasm
#| collect: build

wasm-pack build --target web --out-dir docs/js
```

## Source code

``` {.rust file=src/lib.rs}
mod utils;

use wasm_bindgen::prelude::*;

#[wasm_bindgen]
extern "C" {
    fn alert(s: &str);
}

#[wasm_bindgen]
pub fn greet() {
    alert("Hello, wasm-entangled-demo!");
}
```
