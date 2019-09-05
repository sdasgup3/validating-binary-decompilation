void leaf() {
  __asm__("pmovzxbd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}