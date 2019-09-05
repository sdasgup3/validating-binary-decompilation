void leaf() {
  __asm__("vpshufb -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}