void leaf() {
  __asm__("cvttpd2dq %xmm2, %xmm1");
  }

void main() {
  leaf();
}