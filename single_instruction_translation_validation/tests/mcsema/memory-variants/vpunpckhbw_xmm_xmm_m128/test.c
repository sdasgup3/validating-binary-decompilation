void leaf() {
  __asm__("vpunpckhbw -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}