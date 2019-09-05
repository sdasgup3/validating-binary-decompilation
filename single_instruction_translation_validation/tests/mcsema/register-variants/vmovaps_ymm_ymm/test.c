void leaf() {
  __asm__("vmovaps %ymm2, %ymm1");
  }

void main() {
  leaf();
}