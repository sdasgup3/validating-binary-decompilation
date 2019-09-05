void leaf() {
  __asm__("phsubd %xmm2, %xmm1");
  }

void main() {
  leaf();
}