void leaf() {
  __asm__("vpshufb %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}