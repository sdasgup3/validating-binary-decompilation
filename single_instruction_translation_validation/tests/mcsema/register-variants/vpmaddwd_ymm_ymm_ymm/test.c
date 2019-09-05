void leaf() {
  __asm__("vpmaddwd %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}