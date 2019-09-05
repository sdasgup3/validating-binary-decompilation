void leaf() {
  __asm__("paddw %xmm2, %xmm1");
  }

void main() {
  leaf();
}