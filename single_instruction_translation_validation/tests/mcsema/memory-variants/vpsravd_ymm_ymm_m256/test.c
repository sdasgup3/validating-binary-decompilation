void leaf() {
  __asm__("vpsravd -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}