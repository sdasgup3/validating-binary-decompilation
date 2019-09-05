void leaf() {
  __asm__("sqrtsd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}