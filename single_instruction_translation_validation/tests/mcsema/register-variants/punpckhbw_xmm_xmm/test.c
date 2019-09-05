void leaf() {
  __asm__("punpckhbw %xmm2, %xmm1");
  }

void main() {
  leaf();
}