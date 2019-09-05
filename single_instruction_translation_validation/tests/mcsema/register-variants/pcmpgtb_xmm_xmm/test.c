void leaf() {
  __asm__("pcmpgtb %xmm2, %xmm1");
  }

void main() {
  leaf();
}