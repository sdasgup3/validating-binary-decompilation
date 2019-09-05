void leaf() {
  __asm__("pmovzxbq %xmm2, %xmm1");
  }

void main() {
  leaf();
}