void leaf() {
  __asm__("vphaddd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}