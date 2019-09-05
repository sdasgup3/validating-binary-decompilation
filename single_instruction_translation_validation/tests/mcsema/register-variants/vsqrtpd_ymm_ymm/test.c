void leaf() {
  __asm__("vsqrtpd %ymm2, %ymm1");
  }

void main() {
  leaf();
}