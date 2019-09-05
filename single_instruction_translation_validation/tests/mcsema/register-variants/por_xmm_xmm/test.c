void leaf() {
  __asm__("por %xmm2, %xmm1");
  }

void main() {
  leaf();
}