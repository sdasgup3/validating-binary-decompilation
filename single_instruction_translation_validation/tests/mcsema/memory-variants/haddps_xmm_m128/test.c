void leaf() {
  __asm__("haddps -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}