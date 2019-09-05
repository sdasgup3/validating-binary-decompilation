void leaf() {
  __asm__("vmovdqa %xmm2, %xmm1");
  }

void main() {
  leaf();
}