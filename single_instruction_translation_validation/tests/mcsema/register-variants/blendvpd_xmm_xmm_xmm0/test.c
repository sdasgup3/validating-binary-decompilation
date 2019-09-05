void leaf() {
  __asm__("blendvpd %xmm0, %xmm2, %xmm1");
  }

void main() {
  leaf();
}