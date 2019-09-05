void leaf() {
  __asm__("pcmpeqw %xmm2, %xmm1");
  }

void main() {
  leaf();
}