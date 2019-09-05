void leaf() {
  __asm__("vpunpcklwd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}