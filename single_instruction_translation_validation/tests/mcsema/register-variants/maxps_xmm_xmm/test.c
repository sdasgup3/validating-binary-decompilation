void leaf() {
  __asm__("maxps %xmm2, %xmm1");
  }

void main() {
  leaf();
}