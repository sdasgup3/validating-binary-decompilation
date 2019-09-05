void leaf() {
  __asm__("vsqrtps -4(%rbp), %ymm1");
  }

void main() {
  leaf();
}