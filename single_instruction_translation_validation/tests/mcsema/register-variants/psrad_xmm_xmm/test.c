void leaf() {
  __asm__("psrad %xmm2, %xmm1");
  }

void main() {
  leaf();
}