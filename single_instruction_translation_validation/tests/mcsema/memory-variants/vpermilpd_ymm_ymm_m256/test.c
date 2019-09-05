void leaf() {
  __asm__("vpermilpd -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}