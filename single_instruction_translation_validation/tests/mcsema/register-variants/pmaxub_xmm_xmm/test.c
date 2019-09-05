void leaf() {
  __asm__("pmaxub %xmm2, %xmm1");
  }

void main() {
  leaf();
}