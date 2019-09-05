void leaf() {
  __asm__("vmovq %xmm2, %xmm1");
  }

void main() {
  leaf();
}