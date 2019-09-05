void leaf() {
  __asm__("vpermilps -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}