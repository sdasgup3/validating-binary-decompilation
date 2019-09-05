void leaf() {
  __asm__("vfmadd132sd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}