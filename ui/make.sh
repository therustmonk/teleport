set -e

rm -rf target/deploy
RUST_LOG=0 wasm-pack build --target web
rollup ./main.js --format iife --file ./pkg/bundle.js
mkdir -p target/deploy/pkg
cp static/* target/deploy
cp pkg/bundle.js pkg/teleport_ui_bg.wasm target/deploy/pkg

pushd target/deploy
tar -cvzf ../ui.tar.gz *
popd
