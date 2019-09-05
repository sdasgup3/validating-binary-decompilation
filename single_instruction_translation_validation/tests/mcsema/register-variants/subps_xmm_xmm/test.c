void leaf() {
  __asm__("subps %xmm2, %xmm1");
  }

void main() {
  leaf();
}