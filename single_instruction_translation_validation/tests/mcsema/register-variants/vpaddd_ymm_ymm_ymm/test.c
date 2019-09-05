void leaf() {
  __asm__("vpaddd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}