void leaf() {
  __asm__("vmovss %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}