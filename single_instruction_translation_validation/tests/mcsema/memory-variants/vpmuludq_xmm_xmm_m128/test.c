void leaf() {
  __asm__("vpmuludq -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}