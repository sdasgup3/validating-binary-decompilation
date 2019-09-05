void leaf() {
  __asm__("andps %xmm2, %xmm1");
  }

void main() {
  leaf();
}