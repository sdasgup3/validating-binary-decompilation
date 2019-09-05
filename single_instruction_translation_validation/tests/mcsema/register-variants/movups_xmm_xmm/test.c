void leaf() {
  __asm__("movups %xmm2, %xmm1");
  }

void main() {
  leaf();
}