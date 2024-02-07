# Example of building and running Webassembly inside a docker container

## Build it

``` bash
docker buildx build --platform wasi/wasm -t qtekfun/helloworld-wasm:0.0.0 -f .\dockerfile .
```

## Run it

``` bash
docker run --platform wasi/wasm --runtime io.containerd.wasmtime.v1 qtekfun/helloworld-wasm:0.0.0
Hello, I´m running WASM
```
