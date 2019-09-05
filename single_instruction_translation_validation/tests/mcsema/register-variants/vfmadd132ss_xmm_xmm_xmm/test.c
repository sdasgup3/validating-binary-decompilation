void leaf() {
  __asm__("vfmadd132ss %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}