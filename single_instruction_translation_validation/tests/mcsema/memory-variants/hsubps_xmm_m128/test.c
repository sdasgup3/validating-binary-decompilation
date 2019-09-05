void leaf() {
  __asm__("hsubps -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}