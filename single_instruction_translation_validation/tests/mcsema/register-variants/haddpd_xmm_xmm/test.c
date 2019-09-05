void leaf() {
  __asm__("haddpd %xmm2, %xmm1");
  }

void main() {
  leaf();
}