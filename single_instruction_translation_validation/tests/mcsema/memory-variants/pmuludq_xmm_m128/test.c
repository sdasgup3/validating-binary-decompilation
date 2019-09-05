void leaf() {
  __asm__("pmuludq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}