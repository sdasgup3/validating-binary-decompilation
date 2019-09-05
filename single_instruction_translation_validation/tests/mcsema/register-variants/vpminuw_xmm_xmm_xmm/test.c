void leaf() {
  __asm__("vpminuw %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}