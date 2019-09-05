void leaf() {
  __asm__("pxor -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}