void leaf() {
  __asm__("pminsd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}