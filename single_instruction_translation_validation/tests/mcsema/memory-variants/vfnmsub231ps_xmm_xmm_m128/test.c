void leaf() {
  __asm__("vfnmsub231ps -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}