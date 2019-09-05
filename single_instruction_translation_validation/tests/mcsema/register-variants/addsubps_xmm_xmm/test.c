void leaf() {
  __asm__("addsubps %xmm2, %xmm1");
  }

void main() {
  leaf();
}