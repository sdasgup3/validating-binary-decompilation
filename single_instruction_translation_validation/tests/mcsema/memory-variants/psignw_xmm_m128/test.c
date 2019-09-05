void leaf() {
  __asm__("psignw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}