void leaf() {
  __asm__("vmovsd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}