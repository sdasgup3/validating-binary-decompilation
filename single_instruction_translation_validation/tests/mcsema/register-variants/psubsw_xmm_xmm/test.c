void leaf() {
  __asm__("psubsw %xmm2, %xmm1");
  }

void main() {
  leaf();
}