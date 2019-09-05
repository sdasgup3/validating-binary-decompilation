void leaf() {
  __asm__("vunpcklpd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}