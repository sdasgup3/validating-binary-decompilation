void leaf() {
  __asm__("divss %xmm2, %xmm1");
  }

void main() {
  leaf();
}