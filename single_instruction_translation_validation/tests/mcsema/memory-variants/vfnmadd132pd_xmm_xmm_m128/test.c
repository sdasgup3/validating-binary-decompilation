void leaf() {
  __asm__("vfnmadd132pd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}