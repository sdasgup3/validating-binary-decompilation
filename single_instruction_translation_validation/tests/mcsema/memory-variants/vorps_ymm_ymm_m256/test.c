void leaf() {
  __asm__("vorps -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}