void leaf() {
  __asm__("pmovzxwq %xmm2, %xmm1");
  }

void main() {
  leaf();
}