void leaf() {
  __asm__("vpshufhw $0x0, -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}