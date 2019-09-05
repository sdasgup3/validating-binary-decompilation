void leaf() {
  __asm__("vpmaxud %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}