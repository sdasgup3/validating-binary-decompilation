void leaf() {
  __asm__("vrsqrtps -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}