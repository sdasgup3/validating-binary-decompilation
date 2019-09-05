void leaf() {
  __asm__("vunpckhps -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}