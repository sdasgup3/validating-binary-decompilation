void leaf() {
  __asm__("paddd %xmm2, %xmm1");
  }

void main() {
  leaf();
}