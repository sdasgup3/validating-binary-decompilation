void leaf() {
  __asm__("vfnmadd231ps -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}