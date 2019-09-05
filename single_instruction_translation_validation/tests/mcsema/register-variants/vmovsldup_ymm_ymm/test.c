void leaf() {
  __asm__("vmovsldup %ymm2, %ymm1");
  }

void main() {
  leaf();
}