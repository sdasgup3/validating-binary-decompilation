void leaf() {
  __asm__("sqrtss -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}