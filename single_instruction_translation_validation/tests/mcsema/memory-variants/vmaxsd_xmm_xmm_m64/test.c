void leaf() {
  __asm__("vmaxsd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}