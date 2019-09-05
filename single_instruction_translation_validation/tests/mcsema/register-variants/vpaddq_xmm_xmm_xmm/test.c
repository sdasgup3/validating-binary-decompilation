void leaf() {
  __asm__("vpaddq %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}