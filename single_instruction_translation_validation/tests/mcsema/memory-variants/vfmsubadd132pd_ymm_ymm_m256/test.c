void leaf() {
  __asm__("vfmsubadd132pd -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}