void leaf() {
  __asm__("vpaddb -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}