void leaf() {
  __asm__("vpmaxsw %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}