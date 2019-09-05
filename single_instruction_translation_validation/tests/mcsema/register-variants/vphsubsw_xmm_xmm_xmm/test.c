void leaf() {
  __asm__("vphsubsw %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}