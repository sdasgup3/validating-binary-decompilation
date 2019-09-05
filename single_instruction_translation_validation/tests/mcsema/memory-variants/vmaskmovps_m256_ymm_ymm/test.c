void leaf() {
  __asm__("vmaskmovps %ymm2, %ymm1, -4(%rbp)");
  }

void main() {
  leaf();
}