void leaf() {
  __asm__("psubsb -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}