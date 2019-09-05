void leaf() {
  __asm__("vrsqrtps -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}