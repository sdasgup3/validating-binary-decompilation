void leaf() {
  __asm__("vpsubsb %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}