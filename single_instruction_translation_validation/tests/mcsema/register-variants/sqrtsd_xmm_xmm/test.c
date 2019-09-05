void leaf() {
  __asm__("sqrtsd %xmm2, %xmm1");
  }

void main() {
  leaf();
}