void leaf() {
  __asm__("vfmsub213pd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}