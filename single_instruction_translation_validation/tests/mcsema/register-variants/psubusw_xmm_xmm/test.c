void leaf() {
  __asm__("psubusw %xmm2, %xmm1");
  }

void main() {
  leaf();
}