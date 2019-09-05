void leaf() {
  __asm__("movdqu %xmm2, %xmm1");
  }

void main() {
  leaf();
}