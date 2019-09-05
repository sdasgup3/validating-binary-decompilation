void leaf() {
  __asm__("psubsb %xmm2, %xmm1");
  }

void main() {
  leaf();
}