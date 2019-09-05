void leaf() {
  __asm__("punpckhdq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}