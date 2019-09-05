void leaf() {
  __asm__("vpmaddubsw -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}