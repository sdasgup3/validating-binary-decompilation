void leaf() {
  __asm__("vfmsubadd213ps -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}