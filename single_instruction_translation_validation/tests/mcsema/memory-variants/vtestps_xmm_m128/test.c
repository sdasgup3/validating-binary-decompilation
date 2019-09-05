void leaf() {
  __asm__("vtestps -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}