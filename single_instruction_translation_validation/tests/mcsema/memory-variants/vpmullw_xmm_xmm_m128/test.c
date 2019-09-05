void leaf() {
  __asm__("vpmullw -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}