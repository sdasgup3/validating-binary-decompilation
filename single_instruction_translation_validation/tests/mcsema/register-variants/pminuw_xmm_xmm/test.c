void leaf() {
  __asm__("pminuw %xmm2, %xmm1");
  }

void main() {
  leaf();
}