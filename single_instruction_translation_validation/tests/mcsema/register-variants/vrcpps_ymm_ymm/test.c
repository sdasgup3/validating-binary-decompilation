void leaf() {
  __asm__("vrcpps %ymm2, %ymm1");
  }

void main() {
  leaf();
}