void leaf() {
  __asm__("psadbw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}