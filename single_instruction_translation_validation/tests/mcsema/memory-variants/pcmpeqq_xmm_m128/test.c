void leaf() {
  __asm__("pcmpeqq -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}