void leaf() {
  __asm__("vpmuldq -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}