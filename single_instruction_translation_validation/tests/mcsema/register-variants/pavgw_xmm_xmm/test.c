void leaf() {
  __asm__("pavgw %xmm2, %xmm1");
  }

void main() {
  leaf();
}