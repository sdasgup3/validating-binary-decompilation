void leaf() {
  __asm__("vblendps $0x0, -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}