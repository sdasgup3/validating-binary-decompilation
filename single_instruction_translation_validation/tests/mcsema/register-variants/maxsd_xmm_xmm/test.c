void leaf() {
  __asm__("maxsd %xmm2, %xmm1");
  }

void main() {
  leaf();
}