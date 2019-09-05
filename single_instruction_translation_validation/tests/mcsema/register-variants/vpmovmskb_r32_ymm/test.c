void leaf() {
  __asm__("vpmovmskb %ymm1, %ebx");
  }

void main() {
  leaf();
}