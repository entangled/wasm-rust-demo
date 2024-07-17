# Introduction

## Building

``` {.bash .task file=scripts/build.sh}
#| requires: src/lib.rs Cargo.toml
#| creates: pkg/wasm_entangled_demo.js

wasm-pack build
```

``` {.bash .task file=scripts/deploy.sh}
#| requires: pkg/wasm_entangled_demo.js pkg/wasm_entangled_demo_bg.wasm
#| creates: docs/js/wasm_entangled_demo.js docs/js/wasm_entangled_demo_bg.wasm
#| collect: build

cp pkg/* docs/js/
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
