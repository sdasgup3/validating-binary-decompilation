void leaf() {
  __asm__("vfmsub213ps -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}