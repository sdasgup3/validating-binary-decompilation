void leaf() {
  __asm__("vfmadd231pd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}