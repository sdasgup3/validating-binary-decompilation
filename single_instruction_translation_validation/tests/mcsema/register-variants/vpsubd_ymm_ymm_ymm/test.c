void leaf() {
  __asm__("vpsubd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}