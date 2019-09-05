void leaf() {
  __asm__("vpermps -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}