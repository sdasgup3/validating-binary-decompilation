void leaf() {
  __asm__("psubd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}