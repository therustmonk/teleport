import init, { run_app } from './pkg/teleport_ui.js';
async function main() {
   await init('/pkg/teleport_ui_bg.wasm');
   run_app();
}
main()
