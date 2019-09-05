void leaf() {
  __asm__("vpmaskmovd -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}