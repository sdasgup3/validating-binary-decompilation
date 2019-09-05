void leaf() {
  __asm__("psubq %xmm2, %xmm1");
  }

void main() {
  leaf();
}