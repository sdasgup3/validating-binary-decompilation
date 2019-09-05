void leaf() {
  __asm__("psubusw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}