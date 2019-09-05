void leaf() {
  __asm__("vpsubq -4(%rbp), %xmm2, %xmm1");
  }

void main() {
  leaf();
}