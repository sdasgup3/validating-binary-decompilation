void leaf() {
  __asm__("vminps -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}