void leaf() {
  __asm__("vfmsubadd213ps %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}