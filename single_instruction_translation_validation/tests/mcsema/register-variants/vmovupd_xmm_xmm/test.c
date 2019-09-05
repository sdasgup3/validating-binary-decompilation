void leaf() {
  __asm__("vmovupd %xmm2, %xmm1");
  }

void main() {
  leaf();
}