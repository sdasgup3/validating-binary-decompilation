void leaf() {
  __asm__("vmaskmovps -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}