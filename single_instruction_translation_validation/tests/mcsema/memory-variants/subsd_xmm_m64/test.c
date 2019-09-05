void leaf() {
  __asm__("subsd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}