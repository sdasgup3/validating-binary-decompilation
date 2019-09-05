void leaf() {
  __asm__("vpaddw %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}