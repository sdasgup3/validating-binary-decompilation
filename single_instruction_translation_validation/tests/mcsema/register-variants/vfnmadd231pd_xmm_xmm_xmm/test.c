void leaf() {
  __asm__("vfnmadd231pd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}