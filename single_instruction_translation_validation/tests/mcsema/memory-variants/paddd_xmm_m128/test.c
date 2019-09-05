void leaf() {
  __asm__("paddd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}