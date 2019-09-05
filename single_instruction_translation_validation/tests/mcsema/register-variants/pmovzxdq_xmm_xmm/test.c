void leaf() {
  __asm__("pmovzxdq %xmm2, %xmm1");
  }

void main() {
  leaf();
}