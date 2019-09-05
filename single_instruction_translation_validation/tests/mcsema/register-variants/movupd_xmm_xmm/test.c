void leaf() {
  __asm__("movupd %xmm2, %xmm1");
  }

void main() {
  leaf();
}