void leaf() {
  __asm__("vinsertps $0x0, -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}