void leaf() {
  __asm__("punpckldq %xmm2, %xmm1");
  }

void main() {
  leaf();
}