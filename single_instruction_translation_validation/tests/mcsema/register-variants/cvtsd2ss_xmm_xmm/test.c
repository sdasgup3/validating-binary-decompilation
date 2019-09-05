void leaf() {
  __asm__("cvtsd2ss %xmm2, %xmm1");
  }

void main() {
  leaf();
}