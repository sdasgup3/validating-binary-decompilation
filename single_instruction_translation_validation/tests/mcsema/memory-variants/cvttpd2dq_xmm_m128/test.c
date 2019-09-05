void leaf() {
  __asm__("cvttpd2dq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}