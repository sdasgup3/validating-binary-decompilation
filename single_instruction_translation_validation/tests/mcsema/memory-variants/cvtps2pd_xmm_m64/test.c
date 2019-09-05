void leaf() {
  __asm__("cvtps2pd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}