void leaf() {
  __asm__("cvtss2sd %xmm2, %xmm1");
  }

void main() {
  leaf();
}