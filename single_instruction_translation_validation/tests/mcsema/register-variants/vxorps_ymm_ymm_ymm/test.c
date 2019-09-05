void leaf() {
  __asm__("vxorps %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}