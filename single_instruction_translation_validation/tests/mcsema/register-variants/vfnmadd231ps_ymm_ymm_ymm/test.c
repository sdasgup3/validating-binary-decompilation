void leaf() {
  __asm__("vfnmadd231ps %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}