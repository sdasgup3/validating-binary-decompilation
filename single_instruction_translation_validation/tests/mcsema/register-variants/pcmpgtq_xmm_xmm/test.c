void leaf() {
  __asm__("pcmpgtq %xmm2, %xmm1");
  }

void main() {
  leaf();
}