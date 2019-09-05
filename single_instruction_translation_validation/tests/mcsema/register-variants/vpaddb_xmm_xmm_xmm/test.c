void leaf() {
  __asm__("vpaddb %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}