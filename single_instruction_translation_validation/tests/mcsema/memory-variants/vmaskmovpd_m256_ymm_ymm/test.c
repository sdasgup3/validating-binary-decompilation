void leaf() {
  __asm__("vmaskmovpd %ymm2, %ymm1, -4(%rbp)");
  }

void main() {
  leaf();
}