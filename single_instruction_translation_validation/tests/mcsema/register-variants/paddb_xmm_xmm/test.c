void leaf() {
  __asm__("paddb %xmm2, %xmm1");
  }

void main() {
  leaf();
}