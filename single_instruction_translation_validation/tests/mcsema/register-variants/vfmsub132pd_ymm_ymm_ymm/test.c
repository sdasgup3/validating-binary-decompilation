void leaf() {
  __asm__("vfmsub132pd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}