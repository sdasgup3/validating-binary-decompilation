void leaf() {
  __asm__("vphsubsw -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}