void leaf() {
  __asm__("vpavgb -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}