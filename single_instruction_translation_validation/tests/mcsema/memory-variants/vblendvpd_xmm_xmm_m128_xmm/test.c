void leaf() {
  __asm__("vblendvpd %xmm3, -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}