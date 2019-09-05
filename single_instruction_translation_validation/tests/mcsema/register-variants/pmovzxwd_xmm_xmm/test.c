void leaf() {
  __asm__("pmovzxwd %xmm2, %xmm1");
  }

void main() {
  leaf();
}