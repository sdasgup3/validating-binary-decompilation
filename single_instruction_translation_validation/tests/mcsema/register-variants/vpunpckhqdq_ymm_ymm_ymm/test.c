void leaf() {
  __asm__("vpunpckhqdq %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}