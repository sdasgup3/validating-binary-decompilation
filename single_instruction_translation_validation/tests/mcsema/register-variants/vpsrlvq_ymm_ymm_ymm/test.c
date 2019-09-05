void leaf() {
  __asm__("vpsrlvq %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}