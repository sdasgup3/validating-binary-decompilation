void leaf() {
  __asm__("psrld -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}