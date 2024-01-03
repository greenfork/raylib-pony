#include <pony.h>

// #define RL_MALLOC(sz)       rl_pony_malloc(sz)
// #define RL_CALLOC(n,sz)     rl_pony_calloc(n,sz)
// #define RL_REALLOC(ptr,sz)  rl_pony_realloc(ptr,sz)
// #define RL_FREE(ptr)        rl_pony_free(ptr)

void* rl_pony_malloc(size_t size);

void* rl_pony_calloc(size_t nmemb, size_t size);

void* rl_pony_realloc(void* ptr, size_t size);

void rl_pony_free(void* ptr);
