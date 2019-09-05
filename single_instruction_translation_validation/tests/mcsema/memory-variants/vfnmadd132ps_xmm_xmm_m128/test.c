void leaf() {
  __asm__("vfnmadd132ps -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}