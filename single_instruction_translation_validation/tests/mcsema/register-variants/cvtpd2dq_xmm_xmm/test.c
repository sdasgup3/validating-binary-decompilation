void leaf() {
  __asm__("cvtpd2dq %xmm2, %xmm1");
  }

void main() {
  leaf();
}