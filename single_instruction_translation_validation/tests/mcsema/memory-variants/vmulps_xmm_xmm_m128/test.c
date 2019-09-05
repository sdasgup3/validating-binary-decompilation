void leaf() {
  __asm__("vmulps -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}