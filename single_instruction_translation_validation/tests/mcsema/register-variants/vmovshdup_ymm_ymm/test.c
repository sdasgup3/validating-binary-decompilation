void leaf() {
  __asm__("vmovshdup %ymm2, %ymm1");
  }

void main() {
  leaf();
}