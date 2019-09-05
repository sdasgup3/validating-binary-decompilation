void leaf() {
  __asm__("vpermilpd $0x0, -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}