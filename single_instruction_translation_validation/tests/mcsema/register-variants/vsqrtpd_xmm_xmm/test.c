void leaf() {
  __asm__("vsqrtpd %xmm2, %xmm1");
  }

void main() {
  leaf();
}