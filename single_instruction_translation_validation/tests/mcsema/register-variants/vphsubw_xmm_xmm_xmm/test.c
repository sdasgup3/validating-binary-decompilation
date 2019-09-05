void leaf() {
  __asm__("vphsubw %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}