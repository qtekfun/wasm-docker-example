FROM emscripten/emsdk

WORKDIR /app

COPY hello.cc .
RUN emcc hello.cc -o hello.wasm

ENTRYPOINT [ "/app/hello.wasm" ]