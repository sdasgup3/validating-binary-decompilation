void leaf() {
  __asm__("vmovaps %xmm2, %xmm1");
  }

void main() {
  leaf();
}