void leaf() {
  __asm__("pmovzxbw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}