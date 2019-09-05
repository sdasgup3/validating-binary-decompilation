void leaf() {
  __asm__("vandnps -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}