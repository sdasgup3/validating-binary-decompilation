void leaf() {
  __asm__("vpunpcklqdq %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}