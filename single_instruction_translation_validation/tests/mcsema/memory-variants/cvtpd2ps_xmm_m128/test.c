void leaf() {
  __asm__("cvtpd2ps -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}