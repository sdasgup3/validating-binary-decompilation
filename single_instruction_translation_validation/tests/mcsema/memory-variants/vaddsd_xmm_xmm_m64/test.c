void leaf() {
  __asm__("vaddsd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}