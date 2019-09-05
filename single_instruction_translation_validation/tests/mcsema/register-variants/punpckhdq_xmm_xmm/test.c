void leaf() {
  __asm__("punpckhdq %xmm2, %xmm1");
  }

void main() {
  leaf();
}