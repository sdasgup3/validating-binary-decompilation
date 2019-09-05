void leaf() {
  __asm__("vpunpcklbw -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}