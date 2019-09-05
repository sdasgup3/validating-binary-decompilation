void leaf() {
  __asm__("pmulhrsw %xmm2, %xmm1");
  }

void main() {
  leaf();
}