void leaf() {
  __asm__("vcvtpd2dqx %xmm2, %xmm1");
  }

void main() {
  leaf();
}