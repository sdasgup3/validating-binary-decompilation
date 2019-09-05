void leaf() {
  __asm__("vmovss -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}