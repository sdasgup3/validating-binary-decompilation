void leaf() {
  __asm__("vmovshdup -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}