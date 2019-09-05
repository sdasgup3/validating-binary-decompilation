void leaf() {
  __asm__("vpmaskmovq %ymm2, %ymm1, -4(%rbp)");
  }

void main() {
  leaf();
}