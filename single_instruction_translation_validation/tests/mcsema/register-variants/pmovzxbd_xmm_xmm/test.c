void leaf() {
  __asm__("pmovzxbd %xmm2, %xmm1");
  }

void main() {
  leaf();
}