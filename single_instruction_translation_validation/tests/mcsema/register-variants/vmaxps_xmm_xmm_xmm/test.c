void leaf() {
  __asm__("vmaxps %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}