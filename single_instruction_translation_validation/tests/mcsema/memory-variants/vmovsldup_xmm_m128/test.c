void leaf() {
  __asm__("vmovsldup -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}