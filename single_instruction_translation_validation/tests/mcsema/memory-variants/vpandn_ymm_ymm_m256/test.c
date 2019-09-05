void leaf() {
  __asm__("vpandn -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}