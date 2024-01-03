#include <stdlib.h>
#include <pony.h>
#include "raylib_allocators.h"

void* rl_pony_malloc(size_t size) {
	pony_ctx_t* ctx = pony_ctx();
	return pony_alloc(ctx, size);
}

void* rl_pony_calloc(size_t nmemb, size_t size) {
	pony_ctx_t* ctx = pony_ctx();
	return pony_alloc(ctx, nmemb * size);
}

void* rl_pony_realloc(void* ptr, size_t size) {
	pony_ctx_t* ctx = pony_ctx();
	return pony_realloc(ctx, ptr, size, size);
}

void rl_pony_free(void* ptr) {
	return;
}
