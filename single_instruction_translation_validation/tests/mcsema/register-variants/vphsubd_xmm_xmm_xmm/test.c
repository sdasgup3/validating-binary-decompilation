void leaf() {
  __asm__("vphsubd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}