void leaf() {
  __asm__("punpckhwd %xmm2, %xmm1");
  }

void main() {
  leaf();
}