void leaf() {
  __asm__("vpminub %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}