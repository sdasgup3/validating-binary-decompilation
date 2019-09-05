void leaf() {
  __asm__("vmulss -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}