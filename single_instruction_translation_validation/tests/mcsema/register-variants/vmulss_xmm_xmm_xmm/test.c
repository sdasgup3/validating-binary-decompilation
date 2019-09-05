void leaf() {
  __asm__("vmulss %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}