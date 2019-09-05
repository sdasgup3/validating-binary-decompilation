void leaf() {
  __asm__("comiss %xmm2, %xmm1");
  }

void main() {
  leaf();
}