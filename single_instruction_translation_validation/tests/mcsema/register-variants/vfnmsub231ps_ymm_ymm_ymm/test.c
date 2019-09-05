void leaf() {
  __asm__("vfnmsub231ps %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}