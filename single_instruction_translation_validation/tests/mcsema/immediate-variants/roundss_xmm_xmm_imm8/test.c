void leaf() {
  __asm__("roundss $0x77, %xmm2, %xmm1");
  }

void main() {
  leaf();
}