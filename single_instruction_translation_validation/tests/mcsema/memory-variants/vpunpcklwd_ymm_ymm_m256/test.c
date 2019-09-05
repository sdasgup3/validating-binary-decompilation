void leaf() {
  __asm__("vpunpcklwd -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}