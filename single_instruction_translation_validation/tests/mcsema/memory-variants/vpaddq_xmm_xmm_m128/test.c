void leaf() {
  __asm__("vpaddq -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}