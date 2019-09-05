void leaf() {
  __asm__("ucomiss %xmm2, %xmm1");
  }

void main() {
  leaf();
}