void leaf() {
  __asm__("ucomiss -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}