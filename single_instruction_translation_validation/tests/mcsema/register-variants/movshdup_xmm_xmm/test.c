void leaf() {
  __asm__("movshdup %xmm2, %xmm1");
  }

void main() {
  leaf();
}