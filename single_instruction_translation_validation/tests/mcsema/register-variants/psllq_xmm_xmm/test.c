void leaf() {
  __asm__("psllq %xmm2, %xmm1");
  }

void main() {
  leaf();
}