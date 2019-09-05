void leaf() {
  __asm__("minss -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}