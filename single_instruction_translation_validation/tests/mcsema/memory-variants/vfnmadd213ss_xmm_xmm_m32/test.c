void leaf() {
  __asm__("vfnmadd213ss -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}