void leaf() {
  __asm__("vpabsb -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}