void leaf() {
  __asm__("vpmuldq %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}