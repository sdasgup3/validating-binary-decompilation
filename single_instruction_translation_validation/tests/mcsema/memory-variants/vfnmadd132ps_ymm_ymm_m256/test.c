void leaf() {
  __asm__("vfnmadd132ps -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}