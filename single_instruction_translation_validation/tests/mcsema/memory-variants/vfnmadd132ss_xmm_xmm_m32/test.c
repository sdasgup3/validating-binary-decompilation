void leaf() {
  __asm__("vfnmadd132ss -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}