void leaf() {
  __asm__("vpabsb %xmm2, %xmm1");
  }

void main() {
  leaf();
}