void leaf() {
  __asm__("phsubw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}