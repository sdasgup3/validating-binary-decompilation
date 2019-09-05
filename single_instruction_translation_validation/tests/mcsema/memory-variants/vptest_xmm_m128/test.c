void leaf() {
  __asm__("vptest -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}