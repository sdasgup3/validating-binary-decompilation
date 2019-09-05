void leaf() {
  __asm__("pmaxuw %xmm2, %xmm1");
  }

void main() {
  leaf();
}