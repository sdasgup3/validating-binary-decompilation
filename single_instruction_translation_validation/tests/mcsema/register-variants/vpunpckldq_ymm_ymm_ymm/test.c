void leaf() {
  __asm__("vpunpckldq %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}