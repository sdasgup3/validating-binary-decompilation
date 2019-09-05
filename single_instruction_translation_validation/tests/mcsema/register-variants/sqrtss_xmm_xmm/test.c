void leaf() {
  __asm__("sqrtss %xmm2, %xmm1");
  }

void main() {
  leaf();
}