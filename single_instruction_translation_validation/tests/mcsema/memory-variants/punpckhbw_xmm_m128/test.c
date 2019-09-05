void leaf() {
  __asm__("punpckhbw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}