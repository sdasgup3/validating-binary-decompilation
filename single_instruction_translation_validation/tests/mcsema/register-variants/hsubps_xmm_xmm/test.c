void leaf() {
  __asm__("hsubps %xmm2, %xmm1");
  }

void main() {
  leaf();
}