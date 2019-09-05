void leaf() {
  __asm__("mulss -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}