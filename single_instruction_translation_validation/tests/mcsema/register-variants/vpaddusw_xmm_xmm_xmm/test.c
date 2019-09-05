void leaf() {
  __asm__("vpaddusw %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}