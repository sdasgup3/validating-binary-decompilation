void leaf() {
  __asm__("paddusw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}