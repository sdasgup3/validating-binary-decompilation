void leaf() {
  __asm__("vfmsubadd231ps %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}