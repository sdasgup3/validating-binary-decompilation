void leaf() {
  __asm__("pmaddwd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}