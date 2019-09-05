void leaf() {
  __asm__("vcvtpd2dqx -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}