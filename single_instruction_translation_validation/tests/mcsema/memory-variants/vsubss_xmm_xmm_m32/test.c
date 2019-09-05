void leaf() {
  __asm__("vsubss -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}