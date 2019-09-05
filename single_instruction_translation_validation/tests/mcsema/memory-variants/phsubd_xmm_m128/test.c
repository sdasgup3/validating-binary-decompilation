void leaf() {
  __asm__("phsubd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}