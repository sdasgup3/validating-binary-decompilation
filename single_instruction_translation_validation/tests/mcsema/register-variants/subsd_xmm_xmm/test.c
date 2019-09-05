void leaf() {
  __asm__("subsd %xmm2, %xmm1");
  }

void main() {
  leaf();
}