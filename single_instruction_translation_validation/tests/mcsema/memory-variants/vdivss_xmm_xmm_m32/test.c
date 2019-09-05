void leaf() {
  __asm__("vdivss -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}