void leaf() {
  __asm__("vcomiss -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}