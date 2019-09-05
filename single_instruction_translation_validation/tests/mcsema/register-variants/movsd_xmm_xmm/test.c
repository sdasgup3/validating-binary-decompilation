void leaf() {
  __asm__("movsd %xmm2, %xmm1");
  }

void main() {
  leaf();
}