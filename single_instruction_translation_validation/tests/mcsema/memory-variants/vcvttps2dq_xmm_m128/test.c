void leaf() {
  __asm__("vcvttps2dq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}