void leaf() {
  __asm__("vmovups %ymm2, %ymm1");
  }

void main() {
  leaf();
}