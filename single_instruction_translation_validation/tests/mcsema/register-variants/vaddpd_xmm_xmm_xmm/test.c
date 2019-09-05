void leaf() {
  __asm__("vaddpd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}