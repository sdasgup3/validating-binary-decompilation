void leaf() {
  __asm__("pmullw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}