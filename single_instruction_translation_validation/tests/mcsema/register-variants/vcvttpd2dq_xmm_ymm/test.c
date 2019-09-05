void leaf() {
  __asm__("vcvttpd2dq %ymm1, %xmm1");
  }

void main() {
  leaf();
}