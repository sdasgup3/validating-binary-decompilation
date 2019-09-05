void leaf() {
  __asm__("vfnmsub132pd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}