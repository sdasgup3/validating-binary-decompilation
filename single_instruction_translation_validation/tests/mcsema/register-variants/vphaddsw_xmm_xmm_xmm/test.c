void leaf() {
  __asm__("vphaddsw %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}