void leaf() {
  __asm__("vdivpd -4(%rbp), %ymm2, %ymm1");
  }

void main() {
  leaf();
}