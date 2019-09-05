void leaf() {
  __asm__("psubsw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}