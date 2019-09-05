void leaf() {
  __asm__("unpckhps -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}