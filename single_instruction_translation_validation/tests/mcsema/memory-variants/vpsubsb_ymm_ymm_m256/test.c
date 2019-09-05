void leaf() {
  __asm__("vpsubsb -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}