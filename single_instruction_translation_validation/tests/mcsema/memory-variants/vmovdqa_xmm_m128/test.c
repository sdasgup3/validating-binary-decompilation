void leaf() {
  __asm__("vmovdqa -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}