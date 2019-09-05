void leaf() {
  __asm__("pabsw %xmm2, %xmm1");
  }

void main() {
  leaf();
}