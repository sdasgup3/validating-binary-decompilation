void leaf() {
  __asm__("vrsqrtss %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}