void leaf() {
  __asm__("psllw %xmm2, %xmm1");
  }

void main() {
  leaf();
}