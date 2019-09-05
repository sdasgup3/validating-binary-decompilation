void leaf() {
  __asm__("vpminsb %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}