void leaf() {
  __asm__("divss -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}