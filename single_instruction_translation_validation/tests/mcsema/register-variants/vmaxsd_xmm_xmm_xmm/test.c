void leaf() {
  __asm__("vmaxsd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}