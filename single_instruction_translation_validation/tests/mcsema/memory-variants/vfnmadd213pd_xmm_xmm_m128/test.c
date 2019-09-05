void leaf() {
  __asm__("vfnmadd213pd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}