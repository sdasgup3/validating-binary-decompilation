void leaf() {
  __asm__("addss -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}