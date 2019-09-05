void leaf() {
  __asm__("vmaxps -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}