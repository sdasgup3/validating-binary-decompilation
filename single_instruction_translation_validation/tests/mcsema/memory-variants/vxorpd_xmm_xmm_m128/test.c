void leaf() {
  __asm__("vxorpd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}