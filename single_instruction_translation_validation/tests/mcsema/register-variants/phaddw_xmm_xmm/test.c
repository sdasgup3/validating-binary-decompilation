void leaf() {
  __asm__("phaddw %xmm2, %xmm1");
  }

void main() {
  leaf();
}