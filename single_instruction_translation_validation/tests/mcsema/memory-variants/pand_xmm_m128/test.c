void leaf() {
  __asm__("pand -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}