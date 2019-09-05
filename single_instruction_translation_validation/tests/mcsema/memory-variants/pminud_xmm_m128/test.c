void leaf() {
  __asm__("pminud -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}