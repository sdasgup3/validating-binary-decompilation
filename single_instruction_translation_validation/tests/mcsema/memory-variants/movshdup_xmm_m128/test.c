void leaf() {
  __asm__("movshdup -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}