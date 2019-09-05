void leaf() {
  __asm__("vfmsubadd132ps %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}