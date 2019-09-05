void leaf() {
  __asm__("punpcklwd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}