void leaf() {
  __asm__("vhaddpd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}