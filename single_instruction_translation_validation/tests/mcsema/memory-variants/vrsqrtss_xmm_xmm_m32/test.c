void leaf() {
  __asm__("vrsqrtss -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}