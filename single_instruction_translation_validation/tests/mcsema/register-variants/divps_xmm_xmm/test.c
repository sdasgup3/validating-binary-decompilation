void leaf() {
  __asm__("divps %xmm2, %xmm1");
  }

void main() {
  leaf();
}