void leaf() {
  __asm__("vmovd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}