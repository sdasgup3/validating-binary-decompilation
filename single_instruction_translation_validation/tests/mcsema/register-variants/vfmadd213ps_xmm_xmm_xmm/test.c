void leaf() {
  __asm__("vfmadd213ps %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}