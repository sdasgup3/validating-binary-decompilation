void leaf() {
  __asm__("vpmaxsb %ymm3, %ymm2, %ymm1");
  }

void main() {
  leaf();
}