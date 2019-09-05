void leaf() {
  __asm__("subss %xmm2, %xmm1");
  }

void main() {
  leaf();
}