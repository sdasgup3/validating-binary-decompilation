void leaf() {
  __asm__("vfmsub213ps %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}