void leaf() {
  __asm__("blendvpd %xmm0, -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}