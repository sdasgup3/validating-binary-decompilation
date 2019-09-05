void leaf() {
  __asm__("punpcklbw %xmm2, %xmm1");
  }

void main() {
  leaf();
}