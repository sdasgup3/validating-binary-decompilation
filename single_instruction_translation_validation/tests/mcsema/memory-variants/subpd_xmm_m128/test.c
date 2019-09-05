void leaf() {
  __asm__("subpd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}