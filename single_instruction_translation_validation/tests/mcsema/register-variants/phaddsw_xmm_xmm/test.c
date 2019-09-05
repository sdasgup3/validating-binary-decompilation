void leaf() {
  __asm__("phaddsw %xmm2, %xmm1");
  }

void main() {
  leaf();
}