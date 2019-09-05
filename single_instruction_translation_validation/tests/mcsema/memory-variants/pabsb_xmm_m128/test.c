void leaf() {
  __asm__("pabsb -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}