void leaf() {
  __asm__("vfmadd213pd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}