void leaf() {
  __asm__("vphaddsw -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}