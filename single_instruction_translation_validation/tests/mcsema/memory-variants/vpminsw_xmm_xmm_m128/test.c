void leaf() {
  __asm__("vpminsw -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}