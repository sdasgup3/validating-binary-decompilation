void leaf() {
  __asm__("vroundps $0x0, -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}