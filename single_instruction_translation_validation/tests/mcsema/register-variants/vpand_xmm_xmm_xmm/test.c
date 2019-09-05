void leaf() {
  __asm__("vpand %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}