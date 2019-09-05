void leaf() {
  __asm__("vpblendvb %ymm3, -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}