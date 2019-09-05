void leaf() {
  __asm__("paddb -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}