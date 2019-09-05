void leaf() {
  __asm__("psrad -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}