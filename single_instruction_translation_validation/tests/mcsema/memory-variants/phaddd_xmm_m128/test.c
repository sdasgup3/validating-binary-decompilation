void leaf() {
  __asm__("phaddd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}