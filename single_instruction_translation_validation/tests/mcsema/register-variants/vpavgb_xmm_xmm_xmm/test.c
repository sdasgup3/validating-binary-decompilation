void leaf() {
  __asm__("vpavgb %xmm3, %xmm2, %xmm1");
  }

void main() {
  leaf();
}