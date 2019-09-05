void leaf() {
  __asm__("vtestpd %ymm2, %ymm1");
  }

void main() {
  leaf();
}