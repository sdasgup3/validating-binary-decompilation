void leaf() {
  __asm__("vunpckhpd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}