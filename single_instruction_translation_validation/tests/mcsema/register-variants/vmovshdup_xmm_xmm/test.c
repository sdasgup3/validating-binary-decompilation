void leaf() {
  __asm__("vmovshdup %xmm2, %xmm1");
  }

void main() {
  leaf();
}