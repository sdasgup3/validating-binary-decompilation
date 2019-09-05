void leaf() {
  __asm__("vcvtpd2dq %ymm1, %xmm1");
  }

void main() {
  leaf();
}