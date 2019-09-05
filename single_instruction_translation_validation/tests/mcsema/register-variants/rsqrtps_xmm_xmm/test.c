void leaf() {
  __asm__("rsqrtps %xmm2, %xmm1");
  }

void main() {
  leaf();
}