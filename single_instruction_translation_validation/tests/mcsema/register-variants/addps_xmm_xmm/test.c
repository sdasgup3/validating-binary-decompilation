void leaf() {
  __asm__("addps %xmm2, %xmm1");
  }

void main() {
  leaf();
}