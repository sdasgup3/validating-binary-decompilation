void leaf() {
  __asm__("vpminsb -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}