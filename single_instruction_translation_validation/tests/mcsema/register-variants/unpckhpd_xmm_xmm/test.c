void leaf() {
  __asm__("unpckhpd %xmm2, %xmm1");
  }

void main() {
  leaf();
}