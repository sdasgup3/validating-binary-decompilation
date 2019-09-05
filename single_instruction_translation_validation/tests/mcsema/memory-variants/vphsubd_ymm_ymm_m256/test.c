void leaf() {
  __asm__("vphsubd -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}