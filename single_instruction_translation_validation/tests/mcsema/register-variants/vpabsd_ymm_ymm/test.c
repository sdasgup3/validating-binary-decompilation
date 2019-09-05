void leaf() {
  __asm__("vpabsd %ymm2, %ymm1");
  }

void main() {
  leaf();
}