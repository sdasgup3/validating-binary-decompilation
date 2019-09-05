void leaf() {
  __asm__("vfmadd213ps -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}