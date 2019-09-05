void leaf() {
  __asm__("punpcklqdq %xmm2, %xmm1");
  }

void main() {
  leaf();
}