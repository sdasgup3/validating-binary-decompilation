void leaf() {
  __asm__("psrld %xmm2, %xmm1");
  }

void main() {
  leaf();
}