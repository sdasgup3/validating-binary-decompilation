void leaf() {
  __asm__("pmulld %xmm2, %xmm1");
  }

void main() {
  leaf();
}