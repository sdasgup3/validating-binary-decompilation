void leaf() {
  __asm__("vpmuludq %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}