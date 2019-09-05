void leaf() {
  __asm__("psignb -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}