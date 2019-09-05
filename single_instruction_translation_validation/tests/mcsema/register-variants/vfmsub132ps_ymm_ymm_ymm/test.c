void leaf() {
  __asm__("vfmsub132ps %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}