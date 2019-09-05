void leaf() {
  __asm__("vmovdqu -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}