void leaf() {
  __asm__("vcvttpd2dq %xmm2, %xmm1");
  }

void main() {
  leaf();
}