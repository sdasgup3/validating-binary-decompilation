void leaf() {
  __asm__("vpaddsw %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}