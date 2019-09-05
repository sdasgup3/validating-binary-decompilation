void leaf() {
  __asm__("vpunpckldq -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}