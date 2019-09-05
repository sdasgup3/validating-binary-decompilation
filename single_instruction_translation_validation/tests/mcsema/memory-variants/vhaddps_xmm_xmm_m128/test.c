void leaf() {
  __asm__("vhaddps -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}