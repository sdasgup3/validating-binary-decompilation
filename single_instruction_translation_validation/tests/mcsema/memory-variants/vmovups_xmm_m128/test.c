void leaf() {
  __asm__("vmovups -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}