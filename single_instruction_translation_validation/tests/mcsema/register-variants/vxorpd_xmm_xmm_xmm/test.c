void leaf() {
  __asm__("vxorpd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}