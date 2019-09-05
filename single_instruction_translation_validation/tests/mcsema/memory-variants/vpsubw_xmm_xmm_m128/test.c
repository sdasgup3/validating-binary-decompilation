void leaf() {
  __asm__("vpsubw -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}