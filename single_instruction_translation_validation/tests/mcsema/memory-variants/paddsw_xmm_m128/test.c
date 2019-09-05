void leaf() {
  __asm__("paddsw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}