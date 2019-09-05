void leaf() {
  __asm__("vaddss -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}