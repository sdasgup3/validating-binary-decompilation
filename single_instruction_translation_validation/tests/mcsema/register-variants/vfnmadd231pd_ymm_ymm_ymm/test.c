void leaf() {
  __asm__("vfnmadd231pd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}