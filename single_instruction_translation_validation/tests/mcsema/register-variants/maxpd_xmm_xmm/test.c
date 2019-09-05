void leaf() {
  __asm__("maxpd %xmm2, %xmm1");
  }

void main() {
  leaf();
}