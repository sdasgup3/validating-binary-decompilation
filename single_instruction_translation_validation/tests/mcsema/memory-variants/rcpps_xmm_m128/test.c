void leaf() {
  __asm__("rcpps -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}