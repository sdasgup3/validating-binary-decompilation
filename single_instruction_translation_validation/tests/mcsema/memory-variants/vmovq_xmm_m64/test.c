void leaf() {
  __asm__("vmovq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}