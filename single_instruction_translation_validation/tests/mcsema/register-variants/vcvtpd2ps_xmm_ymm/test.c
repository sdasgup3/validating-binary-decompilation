void leaf() {
  __asm__("vcvtpd2ps %ymm1, %xmm1");
  }

void main() {
  leaf();
}