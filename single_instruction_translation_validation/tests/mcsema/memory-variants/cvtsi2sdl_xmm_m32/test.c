void leaf() {
  __asm__("cvtsi2sdl -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}