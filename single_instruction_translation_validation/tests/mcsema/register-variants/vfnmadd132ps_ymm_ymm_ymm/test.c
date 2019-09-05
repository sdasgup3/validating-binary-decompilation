void leaf() {
  __asm__("vfnmadd132ps %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}