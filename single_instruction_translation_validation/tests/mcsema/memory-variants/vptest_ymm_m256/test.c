void leaf() {
  __asm__("vptest -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}