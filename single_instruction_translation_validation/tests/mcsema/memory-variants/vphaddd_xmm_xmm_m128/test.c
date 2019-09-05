void leaf() {
  __asm__("vphaddd -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}