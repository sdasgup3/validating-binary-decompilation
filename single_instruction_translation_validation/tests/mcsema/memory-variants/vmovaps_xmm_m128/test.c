void leaf() {
  __asm__("vmovaps -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}