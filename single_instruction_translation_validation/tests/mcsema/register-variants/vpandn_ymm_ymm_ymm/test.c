void leaf() {
  __asm__("vpandn %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}