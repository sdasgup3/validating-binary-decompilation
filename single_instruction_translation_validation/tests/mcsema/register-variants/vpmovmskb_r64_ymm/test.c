void leaf() {
  __asm__("vpmovmskb %ymm1, %rbx");
  }

void main() {
  leaf();
}