void leaf() {
  __asm__("vpsubsw -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}