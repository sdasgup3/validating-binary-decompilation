void leaf() {
  __asm__("pshufb -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}