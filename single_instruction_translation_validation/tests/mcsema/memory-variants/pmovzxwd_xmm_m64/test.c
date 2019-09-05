void leaf() {
  __asm__("pmovzxwd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}