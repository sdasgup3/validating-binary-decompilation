void leaf() {
  __asm__("vcvtpd2ps -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}