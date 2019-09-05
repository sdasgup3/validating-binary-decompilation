void leaf() {
  __asm__("vaddps -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}