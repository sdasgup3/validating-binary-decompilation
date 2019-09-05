void leaf() {
  __asm__("pcmpeqd %xmm2, %xmm1");
  }

void main() {
  leaf();
}