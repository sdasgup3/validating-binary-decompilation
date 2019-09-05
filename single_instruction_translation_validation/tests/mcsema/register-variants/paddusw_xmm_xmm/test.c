void leaf() {
  __asm__("paddusw %xmm2, %xmm1");
  }

void main() {
  leaf();
}