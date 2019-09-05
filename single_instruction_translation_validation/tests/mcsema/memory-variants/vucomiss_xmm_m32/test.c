void leaf() {
  __asm__("vucomiss -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}