void leaf() {
  __asm__("vmovddup -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}