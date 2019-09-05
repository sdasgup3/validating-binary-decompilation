void leaf() {
  __asm__("pmuludq %xmm2, %xmm1");
  }

void main() {
  leaf();
}