void leaf() {
  __asm__("vaddss %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}