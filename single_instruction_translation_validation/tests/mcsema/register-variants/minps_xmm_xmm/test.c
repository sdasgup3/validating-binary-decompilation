void leaf() {
  __asm__("minps %xmm2, %xmm1");
  }

void main() {
  leaf();
}