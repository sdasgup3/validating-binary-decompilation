void leaf() {
  __asm__("vfmadd132ps %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}