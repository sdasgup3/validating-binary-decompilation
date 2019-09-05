void leaf() {
  __asm__("vcomisd %xmm2, %xmm1");
  }

void main() {
  leaf();
}