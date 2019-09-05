void leaf() {
  __asm__("minsd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}