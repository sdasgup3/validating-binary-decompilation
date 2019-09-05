void leaf() {
  __asm__("vpabsw %xmm2, %xmm1");
  }

void main() {
  leaf();
}