void leaf() {
  __asm__("vmulpd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}