void leaf() {
  __asm__("vpermpd $0x0, -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}