void leaf() {
  __asm__("movhlps %xmm2, %xmm1");
  }

void main() {
  leaf();
}