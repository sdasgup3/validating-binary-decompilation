void leaf() {
  __asm__("ucomisd %xmm2, %xmm1");
  }

void main() {
  leaf();
}