void leaf() {
  __asm__("pabsb %xmm2, %xmm1");
  }

void main() {
  leaf();
}