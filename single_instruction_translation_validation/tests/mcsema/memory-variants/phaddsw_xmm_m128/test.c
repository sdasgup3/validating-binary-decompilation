void leaf() {
  __asm__("phaddsw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}