void leaf() {
  __asm__("sqrtps %xmm2, %xmm1");
  }

void main() {
  leaf();
}