void leaf() {
  __asm__("punpcklbw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}