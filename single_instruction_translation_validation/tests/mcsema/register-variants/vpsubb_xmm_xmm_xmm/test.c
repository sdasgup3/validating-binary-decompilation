void leaf() {
  __asm__("vpsubb %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}