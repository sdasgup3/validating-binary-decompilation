void leaf() {
  __asm__("pmovzxbw %xmm2, %xmm1");
  }

void main() {
  leaf();
}