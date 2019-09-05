void leaf() {
  __asm__("vmovsldup %xmm2, %xmm1");
  }

void main() {
  leaf();
}