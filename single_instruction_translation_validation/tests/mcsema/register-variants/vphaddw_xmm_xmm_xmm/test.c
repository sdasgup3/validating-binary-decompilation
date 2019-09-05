void leaf() {
  __asm__("vphaddw %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}