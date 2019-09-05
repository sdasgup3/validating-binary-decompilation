void leaf() {
  __asm__("vpsubusw %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}