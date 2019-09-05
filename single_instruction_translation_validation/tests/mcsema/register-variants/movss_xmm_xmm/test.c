void leaf() {
  __asm__("movss %xmm2, %xmm1");
  }

void main() {
  leaf();
}