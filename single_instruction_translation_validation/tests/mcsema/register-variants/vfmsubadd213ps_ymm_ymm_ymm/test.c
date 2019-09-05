void leaf() {
  __asm__("vfmsubadd213ps %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}