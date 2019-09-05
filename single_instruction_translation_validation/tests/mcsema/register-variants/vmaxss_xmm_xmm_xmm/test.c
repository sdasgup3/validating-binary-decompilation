void leaf() {
  __asm__("vmaxss %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}