void leaf() {
  __asm__("pmaddwd %xmm2, %xmm1");
  }

void main() {
  leaf();
}