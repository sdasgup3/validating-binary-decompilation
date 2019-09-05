void leaf() {
  __asm__("cvtpd2dq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}