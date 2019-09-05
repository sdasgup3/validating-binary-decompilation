void leaf() {
  __asm__("vpminud -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}