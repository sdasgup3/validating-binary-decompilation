void leaf() {
  __asm__("cvtpd2ps %xmm2, %xmm1");
  }

void main() {
  leaf();
}