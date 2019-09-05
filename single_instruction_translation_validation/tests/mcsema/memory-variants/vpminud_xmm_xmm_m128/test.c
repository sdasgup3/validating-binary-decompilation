void leaf() {
  __asm__("vpminud -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}