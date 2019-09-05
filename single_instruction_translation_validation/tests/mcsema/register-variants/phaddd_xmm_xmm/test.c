void leaf() {
  __asm__("phaddd %xmm2, %xmm1");
  }

void main() {
  leaf();
}