void leaf() {
  __asm__("vphaddsw -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}