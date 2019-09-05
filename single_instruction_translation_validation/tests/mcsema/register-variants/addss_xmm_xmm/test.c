void leaf() {
  __asm__("addss %xmm2, %xmm1");
  }

void main() {
  leaf();
}