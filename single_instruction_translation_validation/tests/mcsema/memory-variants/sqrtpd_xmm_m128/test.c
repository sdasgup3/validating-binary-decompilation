void leaf() {
  __asm__("sqrtpd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}