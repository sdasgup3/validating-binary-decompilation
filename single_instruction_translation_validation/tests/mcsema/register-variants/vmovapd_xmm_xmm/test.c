void leaf() {
  __asm__("vmovapd %xmm2, %xmm1");
  }

void main() {
  leaf();
}