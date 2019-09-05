void leaf() {
  __asm__("pcmpeqd -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}