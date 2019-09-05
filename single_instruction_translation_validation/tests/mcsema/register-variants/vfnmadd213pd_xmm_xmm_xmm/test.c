void leaf() {
  __asm__("vfnmadd213pd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}