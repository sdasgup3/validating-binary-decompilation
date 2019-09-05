void leaf() {
  __asm__("vmulsd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}