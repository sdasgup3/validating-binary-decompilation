void leaf() {
  __asm__("vmulsd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}