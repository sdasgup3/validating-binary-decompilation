void leaf() {
  __asm__("vmovupd %ymm2, %ymm1");
  }

void main() {
  leaf();
}