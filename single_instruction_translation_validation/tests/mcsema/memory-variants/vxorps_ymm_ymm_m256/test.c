void leaf() {
  __asm__("vxorps -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}