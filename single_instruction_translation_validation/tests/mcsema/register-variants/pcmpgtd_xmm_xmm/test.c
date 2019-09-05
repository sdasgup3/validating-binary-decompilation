void leaf() {
  __asm__("pcmpgtd %xmm2, %xmm1");
  }

void main() {
  leaf();
}