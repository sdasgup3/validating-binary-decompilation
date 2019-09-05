void leaf() {
  __asm__("vpunpckhdq -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}