void leaf() {
  __asm__("addsd %xmm2, %xmm1");
  }

void main() {
  leaf();
}