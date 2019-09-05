void leaf() {
  __asm__("vcvtsi2sdl %ebx, %xmm2, %xmm1");
  }

void main() {
  leaf();
}