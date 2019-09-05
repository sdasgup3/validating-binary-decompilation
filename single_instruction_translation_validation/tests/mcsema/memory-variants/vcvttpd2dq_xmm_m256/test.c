void leaf() {
  __asm__("vcvttpd2dq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}