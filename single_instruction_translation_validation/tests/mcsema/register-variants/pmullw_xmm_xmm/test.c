void leaf() {
  __asm__("pmullw %xmm2, %xmm1");
  }

void main() {
  leaf();
}