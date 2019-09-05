void leaf() {
  __asm__("psubb -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}