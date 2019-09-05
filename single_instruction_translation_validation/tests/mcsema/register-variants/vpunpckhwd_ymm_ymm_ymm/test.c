void leaf() {
  __asm__("vpunpckhwd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}