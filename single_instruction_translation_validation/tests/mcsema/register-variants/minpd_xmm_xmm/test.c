void leaf() {
  __asm__("minpd %xmm2, %xmm1");
  }

void main() {
  leaf();
}