void leaf() {
  __asm__("mulps -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}