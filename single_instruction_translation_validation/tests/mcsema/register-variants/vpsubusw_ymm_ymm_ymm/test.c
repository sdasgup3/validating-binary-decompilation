void leaf() {
  __asm__("vpsubusw %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}