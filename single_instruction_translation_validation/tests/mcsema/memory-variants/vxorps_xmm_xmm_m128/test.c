void leaf() {
  __asm__("vxorps -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}