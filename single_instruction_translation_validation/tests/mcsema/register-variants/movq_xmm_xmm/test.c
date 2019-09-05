void leaf() {
  __asm__("movq %xmm2, %xmm1");
  }

void main() {
  leaf();
}