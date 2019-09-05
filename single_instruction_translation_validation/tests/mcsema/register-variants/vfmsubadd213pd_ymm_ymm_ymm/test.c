void leaf() {
  __asm__("vfmsubadd213pd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}