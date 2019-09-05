void leaf() {
  __asm__("paddsb -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}