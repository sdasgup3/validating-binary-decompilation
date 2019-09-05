void leaf() {
  __asm__("vcvtpd2dq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}