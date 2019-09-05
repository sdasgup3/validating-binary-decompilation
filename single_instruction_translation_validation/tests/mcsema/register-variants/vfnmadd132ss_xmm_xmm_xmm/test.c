void leaf() {
  __asm__("vfnmadd132ss %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}