void leaf() {
  __asm__("pmovzxbq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}