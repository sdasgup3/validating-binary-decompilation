void leaf() {
  __asm__("vpsubsb %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}