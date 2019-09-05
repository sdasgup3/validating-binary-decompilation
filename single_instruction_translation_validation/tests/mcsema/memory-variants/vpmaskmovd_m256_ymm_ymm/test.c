void leaf() {
  __asm__("vpmaskmovd %ymm2, %ymm1, -4(%rbp)");
  }

void main() {
  leaf();
}