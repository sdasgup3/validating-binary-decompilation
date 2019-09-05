void leaf() {
  __asm__("andpd %xmm2, %xmm1");
  }

void main() {
  leaf();
}