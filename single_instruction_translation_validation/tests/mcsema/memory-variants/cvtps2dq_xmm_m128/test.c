void leaf() {
  __asm__("cvtps2dq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}