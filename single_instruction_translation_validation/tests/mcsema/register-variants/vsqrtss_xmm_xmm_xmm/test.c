void leaf() {
  __asm__("vsqrtss %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}