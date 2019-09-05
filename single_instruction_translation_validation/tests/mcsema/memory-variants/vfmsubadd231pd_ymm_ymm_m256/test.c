void leaf() {
  __asm__("vfmsubadd231pd -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}