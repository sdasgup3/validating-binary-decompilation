void leaf() {
  __asm__("vmovdqu %ymm2, %ymm1");
  }

void main() {
  leaf();
}