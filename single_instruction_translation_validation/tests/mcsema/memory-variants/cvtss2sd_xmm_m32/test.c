void leaf() {
  __asm__("cvtss2sd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}