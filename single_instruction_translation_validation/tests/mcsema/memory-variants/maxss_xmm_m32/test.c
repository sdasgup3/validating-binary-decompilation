void leaf() {
  __asm__("maxss -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}