void leaf() {
  __asm__("punpckhqdq %xmm2, %xmm1");
  }

void main() {
  leaf();
}