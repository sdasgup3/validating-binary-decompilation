void leaf() {
  __asm__("psubd %xmm2, %xmm1");
  }

void main() {
  leaf();
}