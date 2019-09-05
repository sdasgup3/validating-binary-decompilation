void leaf() {
  __asm__("movhps -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}