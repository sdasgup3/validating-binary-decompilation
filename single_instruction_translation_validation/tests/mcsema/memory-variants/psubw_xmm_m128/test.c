void leaf() {
  __asm__("psubw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}