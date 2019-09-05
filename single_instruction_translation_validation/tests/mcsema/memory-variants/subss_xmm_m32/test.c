void leaf() {
  __asm__("subss -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}