void leaf() {
  __asm__("pmovzxdq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}