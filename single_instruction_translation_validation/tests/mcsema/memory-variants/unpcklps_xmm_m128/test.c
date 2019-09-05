void leaf() {
  __asm__("unpcklps -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}