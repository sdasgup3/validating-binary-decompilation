void leaf() {
  __asm__("psllw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}