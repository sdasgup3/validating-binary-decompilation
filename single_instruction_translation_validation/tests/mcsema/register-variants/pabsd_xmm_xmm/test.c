void leaf() {
  __asm__("pabsd %xmm2, %xmm1");
  }

void main() {
  leaf();
}