void leaf() {
  __asm__("vandnps %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}