void leaf() {
  __asm__("hsubpd %xmm2, %xmm1");
  }

void main() {
  leaf();
}