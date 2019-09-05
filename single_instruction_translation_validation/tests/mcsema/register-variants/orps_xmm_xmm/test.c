void leaf() {
  __asm__("orps %xmm2, %xmm1");
  }

void main() {
  leaf();
}