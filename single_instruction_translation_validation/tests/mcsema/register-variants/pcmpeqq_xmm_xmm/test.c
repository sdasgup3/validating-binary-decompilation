void leaf() {
  __asm__("pcmpeqq %xmm2, %xmm1");
  }

void main() {
  leaf();
}