void leaf() {
  __asm__("pmaxud %xmm2, %xmm1");
  }

void main() {
  leaf();
}