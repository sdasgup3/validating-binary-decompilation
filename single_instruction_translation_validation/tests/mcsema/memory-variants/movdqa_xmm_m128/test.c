void leaf() {
  __asm__("movdqa -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}