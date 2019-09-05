void leaf() {
  __asm__("vsqrtsd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}