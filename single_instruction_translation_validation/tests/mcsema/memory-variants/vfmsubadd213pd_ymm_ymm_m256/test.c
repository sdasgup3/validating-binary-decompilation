void leaf() {
  __asm__("vfmsubadd213pd -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}