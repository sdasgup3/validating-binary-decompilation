void leaf() {
  __asm__("vpaddq -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}