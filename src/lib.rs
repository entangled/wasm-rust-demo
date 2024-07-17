// ~/~ begin <<docs/index.md#src/lib.rs>>[init]
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
// ~/~ end