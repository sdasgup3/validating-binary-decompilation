void leaf() {
  __asm__("vxorpd -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}