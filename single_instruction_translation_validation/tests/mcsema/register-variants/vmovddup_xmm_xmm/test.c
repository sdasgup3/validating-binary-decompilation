void leaf() {
  __asm__("vmovddup %xmm2, %xmm1");
  }

void main() {
  leaf();
}