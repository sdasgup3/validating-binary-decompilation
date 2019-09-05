void leaf() {
  __asm__("vmovups %xmm2, %xmm1");
  }

void main() {
  leaf();
}