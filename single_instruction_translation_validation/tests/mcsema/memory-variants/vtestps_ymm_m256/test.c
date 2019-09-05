void leaf() {
  __asm__("vtestps -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}