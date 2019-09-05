void leaf() {
  __asm__("vpunpckldq -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}