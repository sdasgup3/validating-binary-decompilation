void leaf() {
  __asm__("vtestpd -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}