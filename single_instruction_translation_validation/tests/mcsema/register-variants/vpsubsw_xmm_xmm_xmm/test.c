void leaf() {
  __asm__("vpsubsw %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}