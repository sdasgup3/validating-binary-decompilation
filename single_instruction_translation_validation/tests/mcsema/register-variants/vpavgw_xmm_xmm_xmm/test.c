void leaf() {
  __asm__("vpavgw %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}