void leaf() {
  __asm__("vpminsb %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}