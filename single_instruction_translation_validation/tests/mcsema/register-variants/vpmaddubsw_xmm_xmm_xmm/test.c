void leaf() {
  __asm__("vpmaddubsw %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}