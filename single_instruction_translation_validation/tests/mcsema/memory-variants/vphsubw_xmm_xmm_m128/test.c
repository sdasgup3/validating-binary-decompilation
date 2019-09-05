void leaf() {
  __asm__("vphsubw -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}