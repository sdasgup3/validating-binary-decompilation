void leaf() {
  __asm__("vfmsub213pd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}