void leaf() {
  __asm__("vpsubusw -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}