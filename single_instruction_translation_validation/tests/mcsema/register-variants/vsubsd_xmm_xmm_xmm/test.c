void leaf() {
  __asm__("vsubsd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}