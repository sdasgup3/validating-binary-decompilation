void leaf() {
  __asm__("pcmpgtw %xmm2, %xmm1");
  }

void main() {
  leaf();
}