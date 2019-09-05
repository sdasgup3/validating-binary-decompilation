void leaf() {
  __asm__("vfnmadd132pd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}