void leaf() {
  __asm__("pminuw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}