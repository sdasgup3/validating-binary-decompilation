void leaf() {
  __asm__("vmovapd %ymm2, %ymm1");
  }

void main() {
  leaf();
}