void leaf() {
  __asm__("vpminuw -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}