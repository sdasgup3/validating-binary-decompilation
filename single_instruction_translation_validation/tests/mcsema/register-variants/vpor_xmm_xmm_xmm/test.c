void leaf() {
  __asm__("vpor %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}