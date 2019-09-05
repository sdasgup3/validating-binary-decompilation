void leaf() {
  __asm__("vucomiss %xmm2, %xmm1");
  }

void main() {
  leaf();
}