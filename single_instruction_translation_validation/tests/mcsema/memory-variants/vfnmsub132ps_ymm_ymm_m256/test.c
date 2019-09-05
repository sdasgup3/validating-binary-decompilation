void leaf() {
  __asm__("vfnmsub132ps -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}