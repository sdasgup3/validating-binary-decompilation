void leaf() {
  __asm__("andnps -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}