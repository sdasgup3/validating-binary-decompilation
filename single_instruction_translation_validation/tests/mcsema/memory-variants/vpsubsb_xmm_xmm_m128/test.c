void leaf() {
  __asm__("vpsubsb -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}