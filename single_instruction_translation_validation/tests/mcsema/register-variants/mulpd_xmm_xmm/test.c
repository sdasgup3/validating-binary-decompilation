void leaf() {
  __asm__("mulpd %xmm2, %xmm1");
  }

void main() {
  leaf();
}