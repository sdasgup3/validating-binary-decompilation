void leaf() {
  __asm__("vaddsd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}