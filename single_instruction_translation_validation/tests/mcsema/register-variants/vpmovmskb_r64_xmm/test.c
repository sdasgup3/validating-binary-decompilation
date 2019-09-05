void leaf() {
  __asm__("vpmovmskb %xmm1, %rbx");
  }

void main() {
  leaf();
}