void leaf() {
  __asm__("cvtsi2sdl %ebx, %xmm1");
  }

void main() {
  leaf();
}