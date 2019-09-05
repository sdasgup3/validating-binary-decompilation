void leaf() {
  __asm__("vmovddup %ymm2, %ymm1");
  }

void main() {
  leaf();
}