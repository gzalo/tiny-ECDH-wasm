all:
	emcc ecdh.c -o ecdh.js -s WASM=1 -s "EXPORTED_FUNCTIONS=['_ecdh_generate_keys', '_ecdh_shared_secret', '_malloc']" -s "EXPORTED_RUNTIME_METHODS=['ccall', 'cwrap']"
