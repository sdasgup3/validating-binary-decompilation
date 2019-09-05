void leaf() {
  __asm__("vdivps %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}