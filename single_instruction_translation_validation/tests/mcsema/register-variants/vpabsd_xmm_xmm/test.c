void leaf() {
  __asm__("vpabsd %xmm2, %xmm1");
  }

void main() {
  leaf();
}