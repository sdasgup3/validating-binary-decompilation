void leaf() {
  __asm__("vsqrtps %xmm2, %xmm1");
  }

void main() {
  leaf();
}