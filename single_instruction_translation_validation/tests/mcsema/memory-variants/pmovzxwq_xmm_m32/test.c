void leaf() {
  __asm__("pmovzxwq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}