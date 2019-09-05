void leaf() {
  __asm__("movddup %xmm2, %xmm1");
  }

void main() {
  leaf();
}