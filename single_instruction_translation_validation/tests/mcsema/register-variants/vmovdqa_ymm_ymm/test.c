void leaf() {
  __asm__("vmovdqa %ymm2, %ymm1");
  }

void main() {
  leaf();
}