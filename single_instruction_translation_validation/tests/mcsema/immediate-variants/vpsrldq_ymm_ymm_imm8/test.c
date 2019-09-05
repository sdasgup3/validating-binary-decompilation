void leaf() {
  __asm__("vpsrldq $0x77, %ymm2, %ymm1");
  }

void main() {
  leaf();
}