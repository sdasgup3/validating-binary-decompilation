void leaf() {
  __asm__("pcmpeqb %xmm2, %xmm1");
  }

void main() {
  leaf();
}