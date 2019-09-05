void leaf() {
  __asm__("vfmadd132sd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}