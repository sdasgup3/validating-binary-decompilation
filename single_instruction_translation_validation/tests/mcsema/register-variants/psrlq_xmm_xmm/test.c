void leaf() {
  __asm__("psrlq %xmm2, %xmm1");
  }

void main() {
  leaf();
}