void leaf() {
  __asm__("vpsubq %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}