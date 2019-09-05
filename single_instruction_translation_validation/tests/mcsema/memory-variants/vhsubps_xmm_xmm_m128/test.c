void leaf() {
  __asm__("vhsubps -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}