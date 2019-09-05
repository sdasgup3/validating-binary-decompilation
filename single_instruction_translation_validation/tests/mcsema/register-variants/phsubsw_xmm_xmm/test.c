void leaf() {
  __asm__("phsubsw %xmm2, %xmm1");
  }

void main() {
  leaf();
}