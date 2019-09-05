void leaf() {
  __asm__("vpaddd -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}