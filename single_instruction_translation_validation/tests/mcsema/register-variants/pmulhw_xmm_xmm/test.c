void leaf() {
  __asm__("pmulhw %xmm2, %xmm1");
  }

void main() {
  leaf();
}