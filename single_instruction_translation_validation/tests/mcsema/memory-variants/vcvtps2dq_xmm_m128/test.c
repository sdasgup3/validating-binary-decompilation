void leaf() {
  __asm__("vcvtps2dq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}