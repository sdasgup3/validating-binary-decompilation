void leaf() {
  __asm__("vpsubd %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}