void leaf() {
  __asm__("pandn %xmm2, %xmm1");
  }

void main() {
  leaf();
}