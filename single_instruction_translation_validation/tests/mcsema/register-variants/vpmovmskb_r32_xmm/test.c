void leaf() {
  __asm__("vpmovmskb %xmm1, %ebx");
  }

void main() {
  leaf();
}