void leaf() {
  __asm__("xorps -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}