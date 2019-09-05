void leaf() {
  __asm__("vfmadd132pd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}