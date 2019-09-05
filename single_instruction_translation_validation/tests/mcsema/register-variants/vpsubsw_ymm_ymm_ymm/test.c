void leaf() {
  __asm__("vpsubsw %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}