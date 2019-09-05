void leaf() {
  __asm__("vpminsd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}