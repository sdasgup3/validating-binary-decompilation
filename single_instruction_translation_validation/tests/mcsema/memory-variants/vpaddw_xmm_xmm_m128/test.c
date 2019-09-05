void leaf() {
  __asm__("vpaddw -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}