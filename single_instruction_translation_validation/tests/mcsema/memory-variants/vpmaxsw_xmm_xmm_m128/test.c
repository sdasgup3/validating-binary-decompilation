void leaf() {
  __asm__("vpmaxsw -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}