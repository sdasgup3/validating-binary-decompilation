void leaf() {
  __asm__("movdqa %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}