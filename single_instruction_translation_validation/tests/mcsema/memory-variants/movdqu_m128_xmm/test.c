void leaf() {
  __asm__("movdqu %xmm1, -4(%rbp)");
  }

void main() {
  leaf();
}