void leaf() {
  __asm__("vcvtsi2sdl -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}