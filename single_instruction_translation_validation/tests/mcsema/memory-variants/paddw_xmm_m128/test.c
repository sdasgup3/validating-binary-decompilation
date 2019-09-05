void leaf() {
  __asm__("paddw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}