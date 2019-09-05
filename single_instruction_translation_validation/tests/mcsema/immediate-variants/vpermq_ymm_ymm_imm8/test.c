void leaf() {
  __asm__("vpermq $0x77, %ymm2, %ymm1");
  }

void main() {
  leaf();
}