void leaf() {
  __asm__("vpaddsw -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}