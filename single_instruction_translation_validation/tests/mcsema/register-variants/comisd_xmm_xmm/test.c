void leaf() {
  __asm__("comisd %xmm2, %xmm1");
  }

void main() {
  leaf();
}