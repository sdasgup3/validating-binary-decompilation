void leaf() {
  __asm__("vcvtss2sd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}