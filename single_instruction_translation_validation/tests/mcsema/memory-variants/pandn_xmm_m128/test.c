void leaf() {
  __asm__("pandn -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}