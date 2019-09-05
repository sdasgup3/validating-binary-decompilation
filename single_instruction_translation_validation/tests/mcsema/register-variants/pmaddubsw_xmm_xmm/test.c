void leaf() {
  __asm__("pmaddubsw %xmm2, %xmm1");
  }

void main() {
  leaf();
}