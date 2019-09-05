void leaf() {
  __asm__("vpunpcklbw -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}