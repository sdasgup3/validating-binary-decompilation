void leaf() {
  __asm__("vpaddb -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}