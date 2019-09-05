void leaf() {
  __asm__("por -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}