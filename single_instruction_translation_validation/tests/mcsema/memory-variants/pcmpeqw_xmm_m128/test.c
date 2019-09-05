void leaf() {
  __asm__("pcmpeqw -4(%rbp), %xmm1");
  }

void main() {
  leaf();
}