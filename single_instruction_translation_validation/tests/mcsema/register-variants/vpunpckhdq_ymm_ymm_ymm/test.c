void leaf() {
  __asm__("vpunpckhdq %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}