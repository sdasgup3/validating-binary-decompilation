void leaf() {
  __asm__("vpunpcklwd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}