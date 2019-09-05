void leaf() {
  __asm__("vfnmadd132ps %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}