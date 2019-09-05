void leaf() {
  __asm__("vpermq $0x0, -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}