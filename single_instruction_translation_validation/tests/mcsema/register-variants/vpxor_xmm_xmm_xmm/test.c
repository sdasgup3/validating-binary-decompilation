void leaf() {
  __asm__("vpxor %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}