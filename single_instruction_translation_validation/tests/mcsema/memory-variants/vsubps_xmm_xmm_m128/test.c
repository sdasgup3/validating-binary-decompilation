void leaf() {
  __asm__("vsubps -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}