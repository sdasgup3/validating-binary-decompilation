void leaf() {
  __asm__("sqrtps -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}