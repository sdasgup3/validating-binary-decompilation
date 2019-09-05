void leaf() {
  __asm__("subps -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}