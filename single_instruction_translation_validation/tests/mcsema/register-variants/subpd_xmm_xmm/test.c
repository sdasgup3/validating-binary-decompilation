void leaf() {
  __asm__("subpd %xmm2, %xmm1");
  }

void main() {
  leaf();
}