void leaf() {
  __asm__("vfmsubadd132pd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}