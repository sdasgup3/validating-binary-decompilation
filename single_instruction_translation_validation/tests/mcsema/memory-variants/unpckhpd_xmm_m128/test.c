void leaf() {
  __asm__("unpckhpd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}