void leaf() {
  __asm__("movddup -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}