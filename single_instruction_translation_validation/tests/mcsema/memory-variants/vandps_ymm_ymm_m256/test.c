void leaf() {
  __asm__("vandps -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}