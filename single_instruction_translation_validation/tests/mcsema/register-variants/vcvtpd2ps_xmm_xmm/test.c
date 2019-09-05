void leaf() {
  __asm__("vcvtpd2ps %xmm2, %xmm1");
  }

void main() {
  leaf();
}