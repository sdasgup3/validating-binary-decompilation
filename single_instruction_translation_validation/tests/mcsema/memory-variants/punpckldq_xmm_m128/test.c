void leaf() {
  __asm__("punpckldq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}