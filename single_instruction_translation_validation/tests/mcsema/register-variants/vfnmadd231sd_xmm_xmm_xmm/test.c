void leaf() {
  __asm__("vfnmadd231sd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}