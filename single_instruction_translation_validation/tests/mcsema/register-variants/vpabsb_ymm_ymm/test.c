void leaf() {
  __asm__("vpabsb %ymm2, %ymm1");
  }

void main() {
  leaf();
}