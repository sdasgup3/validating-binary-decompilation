void leaf() {
  __asm__("vfmsub231pd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}