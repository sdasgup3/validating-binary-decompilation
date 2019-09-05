void leaf() {
  __asm__("punpcklwd %xmm2, %xmm1");
  }

void main() {
  leaf();
}