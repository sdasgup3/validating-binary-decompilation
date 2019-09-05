void leaf() {
  __asm__("vfmsubadd213ps -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}