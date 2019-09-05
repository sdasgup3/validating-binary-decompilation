void leaf() {
  __asm__("maxss %xmm2, %xmm1");
  }

void main() {
  leaf();
}