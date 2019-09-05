void leaf() {
  __asm__("cvttps2dq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}