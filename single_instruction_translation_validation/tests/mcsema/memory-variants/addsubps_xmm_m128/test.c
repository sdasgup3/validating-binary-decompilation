void leaf() {
  __asm__("addsubps -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}