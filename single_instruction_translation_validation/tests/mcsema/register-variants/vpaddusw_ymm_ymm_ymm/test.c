void leaf() {
  __asm__("vpaddusw %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}