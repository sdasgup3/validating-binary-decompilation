void leaf() {
  __asm__("vpermd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}