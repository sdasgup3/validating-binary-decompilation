void leaf() {
  __asm__("vfnmsub213sd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}