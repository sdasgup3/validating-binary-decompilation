void leaf() {
  __asm__("vfnmadd231ss -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}