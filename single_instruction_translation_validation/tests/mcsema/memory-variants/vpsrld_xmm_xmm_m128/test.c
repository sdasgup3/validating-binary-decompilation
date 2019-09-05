void leaf() {
  __asm__("vpsrld -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}