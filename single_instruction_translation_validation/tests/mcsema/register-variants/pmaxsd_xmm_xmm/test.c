void leaf() {
  __asm__("pmaxsd %xmm2, %xmm1");
  }

void main() {
  leaf();
}