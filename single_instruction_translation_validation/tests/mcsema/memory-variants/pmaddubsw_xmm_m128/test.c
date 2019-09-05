void leaf() {
  __asm__("pmaddubsw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}