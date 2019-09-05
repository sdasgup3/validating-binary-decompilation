void leaf() {
  __asm__("movdqa %xmm2, %xmm1");
  }

void main() {
  leaf();
}